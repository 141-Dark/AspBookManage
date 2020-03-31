<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication4.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        用户信息</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:myConStr %>" 
        DeleteCommand="DELETE FROM [yhb] WHERE [id] = @original_id AND (([xm] = @original_xm) OR ([xm] IS NULL AND @original_xm IS NULL)) AND (([mm] = @original_mm) OR ([mm] IS NULL AND @original_mm IS NULL)) AND (([xb] = @original_xb) OR ([xb] IS NULL AND @original_xb IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))" 
        InsertCommand="INSERT INTO [yhb] ([xm], [mm], [xb], [address]) VALUES (@xm, @mm, @xb, @address)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [yhb]" 
        UpdateCommand="UPDATE [yhb] SET [xm] = @xm, [mm] = @mm, [xb] = @xb, [address] = @address WHERE [id] = @original_id AND (([xm] = @original_xm) OR ([xm] IS NULL AND @original_xm IS NULL)) AND (([mm] = @original_mm) OR ([mm] IS NULL AND @original_mm IS NULL)) AND (([xb] = @original_xb) OR ([xb] IS NULL AND @original_xb IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_xm" Type="String" />
            <asp:Parameter Name="original_mm" Type="String" />
            <asp:Parameter Name="original_xb" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="xm" Type="String" />
            <asp:Parameter Name="mm" Type="String" />
            <asp:Parameter Name="xb" Type="String" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="xm" Type="String" />
            <asp:Parameter Name="mm" Type="String" />
            <asp:Parameter Name="xb" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_xm" Type="String" />
            <asp:Parameter Name="original_mm" Type="String" />
            <asp:Parameter Name="original_xb" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="xmLabel" runat="server" Text='<%# Eval("xm") %>' />
                </td>
                <td>
                    <asp:Label ID="mmLabel" runat="server" Text='<%# Eval("mm") %>' />
                </td>
                <td>
                    <asp:Label ID="xbLabel" runat="server" Text='<%# Eval("xb") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="xmTextBox" runat="server" Text='<%# Bind("xm") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mmTextBox" runat="server" Text='<%# Bind("mm") %>' />
                </td>
                <td>
                    <asp:TextBox ID="xbTextBox" runat="server" Text='<%# Bind("xb") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="xmTextBox" runat="server" Text='<%# Bind("xm") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mmTextBox" runat="server" Text='<%# Bind("mm") %>' />
                </td>
                <td>
                    <asp:TextBox ID="xbTextBox" runat="server" Text='<%# Bind("xb") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="xmLabel" runat="server" Text='<%# Eval("xm") %>' />
                </td>
                <td>
                    <asp:Label ID="mmLabel" runat="server" Text='<%# Eval("mm") %>' />
                </td>
                <td>
                    <asp:Label ID="xbLabel" runat="server" Text='<%# Eval("xb") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    id</th>
                                <th runat="server">
                                    xm</th>
                                <th runat="server">
                                    mm</th>
                                <th runat="server">
                                    xb</th>
                                <th runat="server">
                                    address</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="xmLabel" runat="server" Text='<%# Eval("xm") %>' />
                </td>
                <td>
                    <asp:Label ID="mmLabel" runat="server" Text='<%# Eval("mm") %>' />
                </td>
                <td>
                    <asp:Label ID="xbLabel" runat="server" Text='<%# Eval("xb") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:myConStr %>" 
        DeleteCommand="DELETE FROM [yhb] WHERE [id] = @original_id AND (([xm] = @original_xm) OR ([xm] IS NULL AND @original_xm IS NULL)) AND (([mm] = @original_mm) OR ([mm] IS NULL AND @original_mm IS NULL)) AND (([xb] = @original_xb) OR ([xb] IS NULL AND @original_xb IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))" 
        InsertCommand="INSERT INTO [yhb] ([xm], [mm], [xb], [address]) VALUES (@xm, @mm, @xb, @address)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [yhb]" 
        UpdateCommand="UPDATE [yhb] SET [xm] = @xm, [mm] = @mm, [xb] = @xb, [address] = @address WHERE [id] = @original_id AND (([xm] = @original_xm) OR ([xm] IS NULL AND @original_xm IS NULL)) AND (([mm] = @original_mm) OR ([mm] IS NULL AND @original_mm IS NULL)) AND (([xb] = @original_xb) OR ([xb] IS NULL AND @original_xb IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_xm" Type="String" />
            <asp:Parameter Name="original_mm" Type="String" />
            <asp:Parameter Name="original_xb" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="xm" Type="String" />
            <asp:Parameter Name="mm" Type="String" />
            <asp:Parameter Name="xb" Type="String" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="xm" Type="String" />
            <asp:Parameter Name="mm" Type="String" />
            <asp:Parameter Name="xb" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_xm" Type="String" />
            <asp:Parameter Name="original_mm" Type="String" />
            <asp:Parameter Name="original_xb" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
