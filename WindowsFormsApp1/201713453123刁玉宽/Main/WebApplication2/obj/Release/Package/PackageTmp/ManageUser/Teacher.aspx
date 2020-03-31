<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="WebApplication2.ManageUser.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 660px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="554px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="TeacherID" HeaderText="工号" ReadOnly="True" SortExpression="TeacherID" />
                <asp:BoundField DataField="TeacherName" HeaderText="教师姓名" SortExpression="TeacherName" />
                <asp:BoundField DataField="TeacherSex" HeaderText="性别" SortExpression="TeacherSex" />
                <asp:BoundField DataField="School" HeaderText="学院" SortExpression="School" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="电话号码" SortExpression="PhoneNumber" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teacher]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
