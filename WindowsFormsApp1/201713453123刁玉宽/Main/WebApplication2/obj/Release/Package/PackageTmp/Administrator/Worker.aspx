<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Worker.aspx.cs" Inherits="WebApplication2.Administrator.Worker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 697px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
       
        
        <asp:DataGrid ID="DataGrid1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="554px">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [AdministratorID] as 工号, [AdministratorName] as 姓名, [AdministratorSex] as 性别, [PhoneNumber] as 号码 FROM [Administrator]"></asp:SqlDataSource>
        
       
        
    </form>
</body>
</html>
