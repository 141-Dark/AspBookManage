<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserBrBook.aspx.cs" Inherits="WebApplication2.ManageUser.UserBrBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 710px;
        }
        .student{
            height:40px;
            font-size:35px;
            padding:2px;
        }
        .teacher{
            height:40px;
            font-size:35px;
            padding:2px;
            width: 547px;
        }
    </style>
</head>
<body style="height: 710px">
    <form id="form1" runat="server">
        <div class="student">学生借书</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="554px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="学号" SortExpression="StudentID" />
                <asp:BoundField DataField="StudentName" HeaderText="姓名" SortExpression="StudentName" />
                <asp:BoundField DataField="BookID" HeaderText="书ID" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="BookName" HeaderText="书名" SortExpression="BookName" />
                <asp:BoundField DataField="Date" HeaderText="借书日期" SortExpression="Date" />
                <asp:BoundField DataField="Dateline" HeaderText="还书日期" SortExpression="Dateline" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString3 %>" SelectCommand="SELECT * FROM [Student_Book]"></asp:SqlDataSource>
        <div class="teacher">教师借书
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="BookID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="554px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="TeacherID" HeaderText="工号" SortExpression="TeacherID" />
                <asp:BoundField DataField="TeacherName" HeaderText="教师姓名" SortExpression="TeacherName" />
                <asp:BoundField DataField="BookID" HeaderText="书ID" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="BookName" HeaderText="书名" SortExpression="BookName" />
                <asp:BoundField DataField="Date" HeaderText="借书日期" SortExpression="Date" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-HOA8KUT\BEST;Initial Catalog=ManageBook;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teacher_Book]"></asp:SqlDataSource>
    </form>
</body>
</html>
