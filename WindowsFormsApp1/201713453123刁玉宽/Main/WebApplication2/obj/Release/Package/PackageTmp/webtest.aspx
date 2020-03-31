<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webtest.aspx.cs" Inherits="WebApplication2.webtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
 <body>


     <form id="form1" runat="server">
         <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="AdministratorID" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="AdministratorID" HeaderText="AdministratorID" ReadOnly="True" SortExpression="AdministratorID" />
                 <asp:BoundField DataField="Pwd" HeaderText="Pwd" SortExpression="Pwd" />
                 <asp:BoundField DataField="AdministratorName" HeaderText="AdministratorName" SortExpression="AdministratorName" />
                 <asp:BoundField DataField="AdministratorSex" HeaderText="AdministratorSex" SortExpression="AdministratorSex" />
                 <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                 <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                 <asp:BoundField DataField="ischeck" HeaderText="ischeck" SortExpression="ischeck" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString4 %>" SelectCommand="SELECT * FROM [Administrator]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
     </form>


</body>
</html>
