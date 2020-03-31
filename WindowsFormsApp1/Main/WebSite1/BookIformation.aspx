<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookIformation.aspx.cs" Inherits="WebApplication2.BookIformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height:605px;
            width:100%;
            position:absolute;
            top: 13px;
            left: 10px;
        }
        .img1 {
            height:271px;
            width:527px;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="margin-right: 0px" Height="269px" Width="733px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="图书编号" ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="BookName" HeaderText="书名" SortExpression="BookName" />
                <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
                <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:CheckBoxField DataField="Books" HeaderText="图书" SortExpression="Books" />
                <asp:CheckBoxField DataField="Data" HeaderText="资料" SortExpression="Data" />
                <asp:CheckBoxField DataField="ManuScripts" HeaderText="手稿" SortExpression="ManuScripts" />
            </Columns>
            <EmptyDataTemplate>
                删除<br />
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString2 %>" SelectCommand="SELECT * FROM [Book] ORDER BY [BookID]"></asp:SqlDataSource>
       
     </form>   
</body>
</html>
