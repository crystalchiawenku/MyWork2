<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="ListView.aspx.cs" Inherits="ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 376px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" GroupItemCount="3" OnItemCommand="ListView1_ItemCommand" style="margin-right: 37px">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color:#FFF8DC;">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />test_time:
                        <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                        <br />class:
                        <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
                        <br /><strong>title:
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                        </strong><br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <asp:Button ID="Button2" runat="server" CommandName="Select" Text="Button2_Select" />
                        <br /></td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />test_time:
                        <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                        <br />class:
                        <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                        <br />title:
                        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                        <br />summary:
                        <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                        <br />article:
                        <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                        <br />author:
                        <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                        <br />hit_no:
                        <asp:TextBox ID="hit_noTextBox" runat="server" Text='<%# Bind("hit_no") %>' />
                        <br />get_no:
                        <asp:TextBox ID="get_noTextBox" runat="server" Text='<%# Bind("get_no") %>' />
                        <br />email_no:
                        <asp:TextBox ID="email_noTextBox" runat="server" Text='<%# Bind("email_no") %>' />
                        <br />approved:
                        <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>未傳回資料。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">test_time:
                        <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                        <br />class:
                        <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                        <br />title:
                        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                        <br />summary:
                        <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                        <br />article:
                        <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                        <br />author:
                        <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                        <br />hit_no:
                        <asp:TextBox ID="hit_noTextBox" runat="server" Text='<%# Bind("hit_no") %>' />
                        <br />get_no:
                        <asp:TextBox ID="get_noTextBox" runat="server" Text='<%# Bind("get_no") %>' />
                        <br />email_no:
                        <asp:TextBox ID="email_noTextBox" runat="server" Text='<%# Bind("email_no") %>' />
                        <br />approved:
                        <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color:#DCDCDC;color: #000000;">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />test_time:
                        <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                        <br />class:
                        <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
                        <br /><strong>title:
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                        </strong><br /><br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <asp:Button ID="Button1" runat="server" CommandName="Select" Text="Button_Select" />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server" width="500px">
                            <td runat="server"  >
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server" width="500px">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" class="auto-style1" style="background-color:#008A8C; color: #FFFFFF; font-weight: bold;">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />test_time:
                        <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                        <br />class:
                        <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
                        <br />title:
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                        <br />summary:
                        <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                        <br />article:
                        <asp:Label ID="articleLabel" runat="server" Text='<%# Eval("article") %>' />
                        <br />author:
                        <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
                        <br />hit_no:
                        <asp:Label ID="hit_noLabel" runat="server" Text='<%# Eval("hit_no") %>' />
                        <br />get_no:
                        <asp:Label ID="get_noLabel" runat="server" Text='<%# Eval("get_no") %>' />
                        <br />email_no:
                        <asp:Label ID="email_noLabel" runat="server" Text='<%# Eval("email_no") %>' />
                        <br />approved:
                        <asp:Label ID="approvedLabel" runat="server" Text='<%# Eval("approved") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <asp:Button ID="Button3" runat="server" CommandName="UnSelect" Text="Button_UnSelect" />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)" SelectCommand="SELECT * FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="test_time" Type="DateTime" />
                    <asp:Parameter Name="class" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="summary" Type="String" />
                    <asp:Parameter Name="article" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="hit_no" Type="Int32" />
                    <asp:Parameter Name="get_no" Type="Int32" />
                    <asp:Parameter Name="email_no" Type="Int32" />
                    <asp:Parameter Name="approved" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="test_time" Type="DateTime" />
                    <asp:Parameter Name="class" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="summary" Type="String" />
                    <asp:Parameter Name="article" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="hit_no" Type="Int32" />
                    <asp:Parameter Name="get_no" Type="Int32" />
                    <asp:Parameter Name="email_no" Type="Int32" />
                    <asp:Parameter Name="approved" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
