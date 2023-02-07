using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class DataReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["TestConnectionString"].ConnectionString);
        Conn.Open();
        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("select [id], [title] from [test]", Conn);
        dr = cmd.ExecuteReader();


        //GridView1.DataSource = dr;
        //GridView1.DataBind();

        while (dr.Read())
        {
            Label1.Text += dr["id"] + "\r\n" + dr["title"] + "<br />";
        }

        //釋放資源，關閉連結
        if (dr != null )
        {
            cmd.Cancel();
            dr.Close();
        }

        if(Conn.State == ConnectionState.Open)
        {
            Conn.Close();
        }
    }
}