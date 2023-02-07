using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//==自己寫的（宣告）==
using System.Security.Cryptography;   //-- SHA1專用
using System.Text;                            //-- StringBuilder專用


public partial class Book_Sample_B12_Member_Login_Session_SHA1_Case1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void  Button1_Click(object sender, EventArgs e)
    {
        string source = TextBox1.Text;

        string hash = GetSHA1Hash(source);  //-- SHA1雜湊運算的 function寫在下面。

        Label1.Text = "原本的字串「<font color=blue>" + source + "</font>」，經過SHA1雜湊運算後變成：&nbsp;&nbsp; " + hash;
    
    }


    //===================================================================
    // 資料來源：http://msdn.microsoft.com/zh-tw/library/system.security.cryptography.sha1.aspx 
    //
    //== 底下這部分的程式，就算讀者不懂也可以使用它。照著做就對了。
    //== 只要知道我們輸入一段字串，它就會用 SHA1進行加密後，傳回「加密後的字串」。
    protected string GetSHA1Hash(string uInput)
    {
        ////** 方法一 ****************************************************************
        SHA256 SHA256Hasher = SHA256.Create();
        //-- SHA1必須搭配 System.Security.Cryptography命名空間

        Byte[] data = SHA256Hasher.ComputeHash(Encoding.Default.GetBytes(uInput));
        //--SHA1的.ComputeHash(Byte[]) 方法，計算指定位元組陣列的雜湊值。
        //  （字串轉成Byte[]）  System.Text.Encoding.Default.GetBytes(uInput)


        //** 方法二 ****************************************************************
        //Byte[] data;
        //SHA1CryptoServiceProvider sha1SP = new SHA1CryptoServiceProvider();
        ////-- 使用密碼編譯服務提供者 (CSP) 所提供之實作，計算輸入資料的 SHA1 雜湊值。
        ////-- http://msdn.microsoft.com/zh-tw/library/system.security.cryptography.sha1cryptoserviceprovider.aspx
        //data = sha1SP.ComputeHash(Encoding.Default.GetBytes(uInput));

        StringBuilder sBuilder = new StringBuilder();
        ////-- StringBuilder必須搭配 System.Text命名空間

        // Loop through each byte of the hashed data and format each one as a hexadecimal string.
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));  //--變成十六進位
        }

        return sBuilder.ToString();
    }


}