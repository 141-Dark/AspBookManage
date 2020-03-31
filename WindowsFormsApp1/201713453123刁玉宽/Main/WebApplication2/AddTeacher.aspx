<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="WebApplication2.AddUser.AddTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 627px;
        }
    </style>
</head>
<body style="height: 648px">
    <form id="form1" runat="server">
        
        <asp:Label ID="Label1" runat="server" Text="学号"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="姓名"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="性别"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="女"/>
        <br />
        <asp:Label ID="Label4" runat="server" Text="学院"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="班级"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="号码"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="头像"></asp:Label>
        <asp:DropDownList ID="droppicture" runat="server" OnSelectedIndexChanged="droppicture_SelectedIndexChanged" AutoPostBack="True" Width="99px"  Height="16px" >
        </asp:DropDownList>
        <br />
        <asp:Image ID="imgpicture" runat="server" Height="148px" Width="242px" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        
    </form>
</body>
</html>
