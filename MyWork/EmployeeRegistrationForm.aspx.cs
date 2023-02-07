using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewEmployeeForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!Page.IsPostBack)
            {
                int myYear = System.DateTime.Now.Year;
                for (int i = 0; i <= 50; i++)
                {
                    DropDownList1.Items.Add((myYear - i).ToString());
                }
            }
        }

    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Calendar1.TodaysDate = new DateTime(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), 1);
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
    }


    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        if (TextBox7.Text != TextBox8.Text)
        {
            Response.Write("<script language=javascript>window.alert('Wrong password! Please input again!');</script>");
            TextBox8.Focus();
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript>window.alert('Successfully submit!');</script>)");
    }
}
