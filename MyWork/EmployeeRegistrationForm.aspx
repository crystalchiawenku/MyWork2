<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeRegistrationForm.aspx.cs" Inherits="NewEmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <title>Employees' Registration Form 員工入職資料表</title>

     <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


        <script>
            $(function () {

                $("#TextBox2, #TextBox9").datepicker();


                //$(".widget input[type=submit], .widget a, .widget button").button();
                $("#Button1").button();
                $("button, input, a").on("click", function (event) {
                    //event.preventDefault();
                });

            });
        </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Welcome aboard! Please complete this form." Font-Bold="True" Font-Names="Courier New" ForeColor="#000099"></asp:Label>
            <hr />
        </div>
    <p>Name<asp:TextBox ID="TextBox1" required= "TextBox1"  runat="server" AutoPostBack="True"></asp:TextBox>&nbsp; Today&#39;s date<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </p>
    <p>Date of birth
<asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px" ></asp:TextBox>
    </p>
        <p>Year<asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
&nbsp;Month
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Value="1">Jan</asp:ListItem>
                <asp:ListItem Value="2">Feb</asp:ListItem>
                <asp:ListItem Value="3">Mar</asp:ListItem>
                <asp:ListItem Value="4">Apr</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">Jun</asp:ListItem>
                <asp:ListItem Value="7">Jul</asp:ListItem>
                <asp:ListItem Value="8">Aug</asp:ListItem>
                <asp:ListItem Value="9">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>

    </p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" TitleFormat="Month" Width="400px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>

    </p>
    <p>Gender<asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem Value="M">Male</asp:ListItem>
        <asp:ListItem Value="F">Female</asp:ListItem>
        </asp:RadioButtonList>
        </p>




    <p> The highest education</p><asp:RadioButtonList ID="RadioButtonList2" runat="server" >
                <asp:ListItem Value="LessThanHigh">Less than high school</asp:ListItem>
                <asp:ListItem Value="HighSchoolDip">High school diploma</asp:ListItem>
                <asp:ListItem Value="CollegeNoDip">Some college but no diploma</asp:ListItem>
                <asp:ListItem Value="Bachelors">Bachelor&#39;s degree</asp:ListItem>
                <asp:ListItem Value="MastersOrHigher">Master&#39;s or higher</asp:ListItem>
            </asp:RadioButtonList>
        What is the name of the educational institue? <asp:TextBox ID="TextBox3" required= "TextBox3" runat="server"> </asp:TextBox> 
    <p>Mobile number<asp:TextBox ID="TextBox4" runat="server" TextMode="Phone"></asp:TextBox>
        </p>
    <p>Current address<asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
    <p> E-mail address<asp:TextBox ID="TextBox6" runat="server" required placeholder="please input e-mail address" TextMode="Email"></asp:TextBox>
        </p>
    <p>Password<asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        </p>
    <p>Password again<asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged" TextMode="Password"></asp:TextBox>
        </p>

        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

   </form>
</body>
</html>
