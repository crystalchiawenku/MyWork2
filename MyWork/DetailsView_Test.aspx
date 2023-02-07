<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsView_Test.aspx.cs" Inherits="DetailsView_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="200px" Width="470px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                    <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:TemplateField HeaderText="approved" SortExpression="approved">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text='<%# Bind("approved") %>'></asp:TextBox>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("approved") %>'>
                                <asp:ListItem Value="y">yes</asp:ListItem>
                                <asp:ListItem Value="n">no</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("approved") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("approved") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @original_id AND (([test_time] = @original_test_time) OR ([test_time] IS NULL AND @original_test_time IS NULL)) AND (([summary] = @original_summary) OR ([summary] IS NULL AND @original_summary IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL))" InsertCommand="INSERT INTO [test] ([test_time], [summary], [author], [approved]) VALUES (@test_time, @summary, @author, @approved)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [test_time], [summary], [author], [approved] FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [summary] = @summary, [author] = @author, [approved] = @approved WHERE [id] = @original_id AND (([test_time] = @original_test_time) OR ([test_time] IS NULL AND @original_test_time IS NULL)) AND (([summary] = @original_summary) OR ([summary] IS NULL AND @original_summary IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_test_time" Type="DateTime" />
                    <asp:Parameter Name="original_summary" Type="String" />
                    <asp:Parameter Name="original_author" Type="String" />
                    <asp:Parameter Name="original_approved" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="test_time" Type="DateTime" />
                    <asp:Parameter Name="summary" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="approved" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="test_time" Type="DateTime" />
                    <asp:Parameter Name="summary" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="approved" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_test_time" Type="DateTime" />
                    <asp:Parameter Name="original_summary" Type="String" />
                    <asp:Parameter Name="original_author" Type="String" />
                    <asp:Parameter Name="original_approved" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
