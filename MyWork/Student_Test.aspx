<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Test.aspx.cs" Inherits="Student_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                    <asp:TemplateField HeaderText="city" SortExpression="city">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text='<%# Bind("city") %>'></asp:TextBox>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2_student_city" DataTextField="city" DataValueField="city" SelectedValue='<%# Bind("city") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2_student_city" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [city] FROM [student_city]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource1_student_test_city" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [city] FROM [student_city]"></asp:SqlDataSource>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_student_test_city" DataTextField="city" DataValueField="city" Enabled="False" SelectedValue='<%# Eval("city") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="chinese" HeaderText="chinese" SortExpression="chinese" />
                    <asp:BoundField DataField="math" HeaderText="math" SortExpression="math" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [student_test] WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([chinese] = @original_chinese) OR ([chinese] IS NULL AND @original_chinese IS NULL)) AND (([math] = @original_math) OR ([math] IS NULL AND @original_math IS NULL))" InsertCommand="INSERT INTO [student_test] ([name], [student_id], [city], [chinese], [math]) VALUES (@name, @student_id, @city, @chinese, @math)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student_test]" UpdateCommand="UPDATE [student_test] SET [name] = @name, [student_id] = @student_id, [city] = @city, [chinese] = @chinese, [math] = @math WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([student_id] = @original_student_id) OR ([student_id] IS NULL AND @original_student_id IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([chinese] = @original_chinese) OR ([chinese] IS NULL AND @original_chinese IS NULL)) AND (([math] = @original_math) OR ([math] IS NULL AND @original_math IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_student_id" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_chinese" Type="Int32" />
                    <asp:Parameter Name="original_math" Type="Int32" />
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
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_student_id" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_chinese" Type="Int32" />
                    <asp:Parameter Name="original_math" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
