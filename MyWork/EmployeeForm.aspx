<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeForm.aspx.cs" Inherits="EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <br />
            Name
           <asp:TextBox ID="TextBox1" runat="server" required style="margin-bottom: 0px">
           </asp:TextBox>
            <br />
            Gender
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="font-family: Candara" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" AutoPostBack="True">
                <asp:ListItem Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F">Female</asp:ListItem>

            </asp:RadioButtonList>

                
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <span class="auto-style1">請問您服役情形?</span><br class="auto-style1" />
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Value="NotYet">未役</asp:ListItem>
                        <asp:ListItem Value="NoNeed">免役</asp:ListItem>
                        <asp:ListItem Value="Completed">役畢</asp:ListItem>
                    </asp:RadioButtonList>
                    <br class="auto-style1" />
            </asp:Panel>

                
                <br />
            Date of Birth? 

            <br />
            Year<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;Month
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
&nbsp;月<br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>

            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" style="font-family: Candara" />   

        </div>

    </form>
</body>
</html>
