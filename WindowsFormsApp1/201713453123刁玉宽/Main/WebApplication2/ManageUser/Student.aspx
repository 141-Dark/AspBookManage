<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="WebApplication2.ManageUser.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 622px;
        }
    </style>
</head>
<body style="height: 626px">
    <form id="form1" runat="server">
       
        <asp:DataGrid ID="DataGrid1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="554px">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString4 %>" SelectCommand="SELECT [StudentID], [StudentName], [StudentSex], [School], [Class] FROM [Student]"></asp:SqlDataSource>
       
        <asp:Button ID="Button1" runat="server" Text="添加学生" OnClick="Button1_Click" />
       
    </form>
</body>
</html>
