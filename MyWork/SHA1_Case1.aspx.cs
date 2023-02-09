using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;   
using System.Text; // StringBuilder


public partial class Book_Sample_B12_Member_Login_Session_SHA1_Case1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void  Button1_Click(object sender, EventArgs e)
    {
        string source = TextBox1.Text;

        string hash = GetSHAHash(source);  //-- SHA雜湊運算的 function寫在下面。

        Label1.Text = "原本的字串「<font color=blue>" + source + "</font>」，經過SHA1雜湊運算後變成：&nbsp;&nbsp; " + hash;
    
    }


    //===================================================================
    // 資料來源：http://msdn.microsoft.com/zh-tw/library/system.security.cryptography.sha1.aspx 
    
    protected string GetSHAHash(string uInput)
    {
        ////** 方法一 ****************************************************************
        //SHA的.ComputeHash(Byte[]) 方法，計算指定位元組陣列的雜湊值。
        //（字串轉成Byte[]）  System.Text.Encoding.Default.GetBytes(uInput)
        SHA256 SHA256Hasher = SHA256.Create();//using System.Security.Cryptography
        Byte[] data = SHA256Hasher.ComputeHash(Encoding.Default.GetBytes(uInput));
       


        //** 方法二 ****************************************************************
        //Byte[] data;
        //SHA1CryptoServiceProvider sha1SP = new SHA1CryptoServiceProvider();        
        //data = sha1SP.ComputeHash(Encoding.Default.GetBytes(uInput));

        StringBuilder sBuilder = new StringBuilder();//using System.Text

        // Loop through each byte of the hashed data and format each one as a hexadecimal string.
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));  //--變成十六進位
        }

        return sBuilder.ToString();
    }


}