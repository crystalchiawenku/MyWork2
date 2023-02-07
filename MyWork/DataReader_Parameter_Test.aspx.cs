using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DataReader_Parameter_Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
        SqlDataReader dr = null;
        SqlCommand Cmd = new SqlCommand("select id, title, author, test_time from test where id = @id", Conn);

        if (IsNumeric(Request["id"]))
        {
            Cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request["id"]));
        }
        else
        {
            Response.Write("<h2>URL網址傳來的非數字!</h2>");
            return;
        }

        try//id並須是正確的數字才會進到try
        {
            Conn.Open();
            dr = Cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            //while (dr.Read())
            //{
            //    Response.Write("<b>"+ dr["title"] + "</b>"+ "<br />");
            //}

        }
        catch (Exception ex)
        {
            Response.Write("Error message----" + ex.ToString());
        }

        finally
        {
            if (dr != null)
            {
                Cmd.Cancel();
                dr.Close();
            }

            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
            }
        }

    }
    static bool IsNumeric(object Expression)
    {
        bool isNum;
        double retNum;
        isNum = Double.TryParse(Convert.ToString(Expression), System.Globalization.NumberStyles.Any, System.Globalization.NumberFormatInfo.InvariantInfo, out retNum);
        return isNum;
    }

}