<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReBook.aspx.cs" Inherits="WebApplication2.ManageUser.UserReBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 604px;
        }
    </style>
</head>
<body style="height: 610px">
    <form id="form1" runat="server">
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="554px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="用户ID" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="用户姓名" SortExpression="UserName" />
                <asp:BoundField DataField="BookID" HeaderText="书ID" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="BookName" HeaderText="书名" SortExpression="BookName" />
                <asp:BoundField DataField="Date" HeaderText="还书日期" SortExpression="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [User_Return_Book]"></asp:SqlDataSource>
       
    </form>
</body>
</html>
