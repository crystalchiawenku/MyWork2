using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class DataReader_MARS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //---- 使用多重結果集MARS(MultipleActiveResultSets=True)
        SqlConnection Conn = new SqlConnection("Data Source=.\\SqlExpress;Initial Catalog=NorthWind;Integrated Security=True;MultipleActiveResultSets=true");
            
        SqlDataReader dr1 = null;
        SqlDataReader dr2 = null;

        SqlCommand cmd1 = new SqlCommand("spGetOrders", Conn);
        cmd1.CommandType = CommandType.StoredProcedure;
        SqlCommand cmd2 = null;
        try     
        {
            Conn.Open();   
            dr1 = cmd1.ExecuteReader();            

            if (dr1.HasRows)
            {
                while (dr1.Read())   
                {
                    Response.Write("<p>" +"訂單編號:" + dr1["OrderID"] + "  /  <b>" + "客戶名稱:"+ dr1["CustomerID"] + "</b></p>");//先顯示第一張table
                    Response.Write("<blockquote><font size=3 color=grey>");//畫第二張table

                    //啟動MARS之後（MultipleActiveResultSets=True）。
                    //第一個 DataReader(dr1)尚未關閉就直接使用第二個DataReader(dr2)。

                    //列出Order Details資料表====
                    cmd2 = new SqlCommand("spGetOrderDetails", Conn);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@OrderID", dr1["OrderID"]);
                    dr2 = cmd2.ExecuteReader();

                    if (dr2.HasRows)
                    {
                        //dr2.Read();
                        while (dr2.Read())
                        {
                            Response.Write("<b>OrderDetails: </b>" + "<br/>");
                            Response.Write("<b>ProductID: " + dr2["ProductID"]+ " / " + "UnitPrice: "+dr2["UnitPrice"]+"</b>" + "</br>");
                        }
                    }

                    if (dr2 != null)
                    {
                        cmd2.Cancel();
                        dr2.Close();
                    }
                    Response.Write("</font></blockquote>");
                }
            }
        }
        catch (Exception ex)
        {  
            Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<br />");
        }
        finally
        {   //---- Always call Close when completing reading.
            if (dr1 != null)
            {
                cmd1.Cancel();
                dr1.Close();
            }

            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
            }
        }

    }
}