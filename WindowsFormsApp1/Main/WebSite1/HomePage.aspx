<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebSite1.HomePage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <title>登录端首页</title>
 
 <style type="text/css">
     .bodys{
            margin-left:40%;
            padding:20px;
            position:inherit;
            height: 315px;
            width: 480px;
     }

     h1 {
           padding-left:40%;
           text-align:center;
     }
      
     #TextBox1 {
         margin-left:60px;
         margin-top:20px;
     }

     #TextBox2 {
         margin-left: 60px;
         margin-top:20px;
     }

    #TextBox3 {
         margin-left: 42px;
         margin-top:20px;
    }

    #Landing {
         margin:20px;
         margin-left:60px;
    }
    #Users {
        margin:20px;
    }
    body{
           background-image:url(../WebSite1/img/5.jpg) ;
           background-size:cover;
           background-repeat:no-repeat;   
    }
    #form1 {
         height: 656px;
         width: 1423px;
    }
 </style>
    
</head>
 <body  >
  <form id="form1" runat="server"   method="post">
          <br/><br/><br/>
          <h1>管理员登录</h1>
          <br/>
      <div class="bodys">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Users" runat="server" Text="用户名" ></asp:Label>
                <asp:TextBox ID="User" runat="server"></asp:TextBox>
                <br/>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
                <asp:TextBox ID="Register" runat="server" TextMode="Password"></asp:TextBox>
                <br/>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="验证码"></asp:Label>
                 
                <asp:TextBox ID="Code" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                &nbsp;&nbsp;
                <br/>

                <asp:Button ID="Landing" runat="server" Height="39px" Text="登录" OnClick="Landing_Click" Width="359px" />
                <br/>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <asp:Button ID="Regisit" runat="server" Height="39px" Text="注册" OnClick="Regisit_Click" Width="359px" />

      </div>
                <br />
    </form>
</body>
</html>
