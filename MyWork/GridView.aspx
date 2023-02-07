<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                <asp:TemplateField HeaderText="city" SortExpression="city">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="city" DataValueField="city" SelectedValue='<%# Bind("city") %>'>
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [city] FROM [student_city]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="city" DataValueField="city" Enabled="False" SelectedValue='<%# Bind("city") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [city] FROM [student_city]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="chinese" HeaderText="chinese" SortExpression="chinese" />
                <asp:BoundField DataField="math" HeaderText="math" SortExpression="math" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [student_test] WHERE [id] = @id" InsertCommand="INSERT INTO [student_test] ([name], [student_id], [city], [chinese], [math]) VALUES (@name, @student_id, @city, @chinese, @math)" SelectCommand="SELECT * FROM [student_test]" UpdateCommand="UPDATE [student_test] SET [name] = @name, [student_id] = @student_id, [city] = @city, [chinese] = @chinese, [math] = @math WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="student_id" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="chinese" Type="Int32" />
                <asp:Parameter Name="math" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="student_id" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="chinese" Type="Int32" />
                <asp:Parameter Name="math" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
