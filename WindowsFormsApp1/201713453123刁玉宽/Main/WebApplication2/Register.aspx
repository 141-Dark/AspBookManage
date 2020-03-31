<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员注册页面</title>
<style type="text/css">
    body {
       background-image:url(Image/BackGroundPhoto/7.jpg) ;
           background-size:cover;
           background-repeat:no-repeat;
        width:50%;
        height:50%;
    }
    .d1 {
        width:600px;
        height:60px;
        margin-left:35%;
        padding:5px;
        font-size:50px;
        margin-top:30px;
        margin-bottom:10px;
    }
    .d2 {
        width:299px;
        height:546px;
        margin-left:20%;
        background-image:url('file:///F:/数据库查询UI界面/WindowsFormsApp1/Main/WebApplication2/Image/2.jpg');
        background-size:cover;
        background-repeat:no-repeat;
        margin-top:0px;
        display:inline;
        float:left;
    }
 
    #Panel {
        width:400px;
        height:400px;
        background-color:aqua;
    }

    .container {
        width:100%;
        height:700px;
        
    }
    .d3 {
        border-style: solid;
        border-color: inherit;
        border-width: 1px;
        height: 232px;
        width: 584px;
        margin-left:40%;
        padding:10px;
    }
    .d4 {
        margin-left:40%;
        border-style: solid;
        border-color: inherit;
        border-width: 1px;
        margin-top:0.5%;
        height: 262px;
        width: 584px;
        padding:10px;
    }
    #Label1 {
        margin:20px;
        font-size:20px;
    }
    #TextBox1 {
        height:20px;
        margin-left:50px;
    }
     #Label2 {
        margin:20px;
        font-size:20px;
    }
    #TextBox2 {
        height:20px;
        margin-top:30px;
        margin-left:50px;
    }
     #Label3 {
        margin:20px;
        font-size:20px;
    }
     #Label7 {
        margin:20px;
        font-size:20px;
    }
    #TextBox3 {
        height:20px;
        margin-top:20px;
        margin-left:20px;
    }
    #TextBox5 {
        height:20px;
        margin-top:20px;
        margin-left:20px;
    }
     #Label4 {
        margin:20px;
        font-size:20px;
    }
    #TextBox4 {
        height:20px;
        margin-left:50px;
        margin-top:20px;
    }
    #Label5 {
        margin:20px;
        font-size:20px;
        
    }
     #RadioButton1 {
        height:20px;
        margin-left:50px;
        
    }
     #Label6 {
        margin:20px;
        font-size:20px;
    }
    #TextBox6 {
        height:20px;
        margin-left:50px;
        margin-top:20px;
    }
    
    #Button1 {
        margin:50px;
    }
    #Button2 {
        margin:50px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 邮箱注册 </div>
        <div class="container">
            <div class ="d2"></div>
            <div class="d3">
                <asp:Label ID="Label1" runat="server" Text="工号:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
                <br />
                 <asp:Label ID="Label2" runat="server" Text="密码:"></asp:Label>
                
                &nbsp;&nbsp;
                
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <br />
                 <asp:Label ID="Label3" runat="server" Text="确认密码:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                 <asp:Label ID="Label7" runat="server" Text="邮箱号:"></asp:Label>
                &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            
            </div>
            <div class="d4">
                    <asp:Label ID="Label4" runat="server" Text="姓名:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                 <asp:Label ID="Label5" runat="server" Text="性别:"></asp:Label>
                 
                 
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
                    &nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="女"/>
                 
                 
                <br />
                 <asp:Label ID="Label6" runat="server" Text="号码:"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
                    
                    <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
                </div>
        </div>
    
        
    </form>
    </body>
</html>
