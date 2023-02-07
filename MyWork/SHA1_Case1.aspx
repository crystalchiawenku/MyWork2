<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SHA1_Case1.aspx.cs" Inherits="Book_Sample_B12_Member_Login_Session_SHA1_Case1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <p>
        <span class="style1">資料來源：</span><a 
            href="http://msdn.microsoft.com/zh-tw/library/system.security.cryptography.sha1.aspx"><span 
            class="style1">http://msdn.microsoft.com/zh-tw/library/system.security.cryptography.sha1.aspx</span></a>
        <br class="style1" />
    </p>
    <p class="style1">
        命名空間： System.Security.Cryptography</p>
    <form id="form1" runat="server">
    <div>
    
        請輸入一段字，讓 SHA1雜湊演算法為您加密：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <hr />
        把程式碼裡面的「SHA1」改成「SHA512」、「SHA384」、「SHA256」都可以。<br />
        <br />
        <br />
       
        <br />
        SHA1加密後的成果：<asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; color: #FF0066" ></asp:Label>

    </div>
    </form>
</body>
</html>

