<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="province" 
        DataValueField="province" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myConStr %>" 
        SelectCommand="SELECT DISTINCT [province] FROM [city]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
    </form>
</body>
</html>
