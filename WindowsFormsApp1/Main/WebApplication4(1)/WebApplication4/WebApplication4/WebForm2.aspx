<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Height="43px" onclick="Button1_Click" 
            Text="登录" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    <asp:Button ID="Button2" runat="server" Height="85px" onclick="Button2_Click" 
        Text="注册" Width="106px" />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" Font-Bold="True" 
        Font-Size="Larger" ForeColor="#66FF33" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" 
        ForeColor="#009900"></asp:Label>
    <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
