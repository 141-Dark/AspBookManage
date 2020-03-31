<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication2.HomePage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>登录端首页</title>
 
 <style type="text/css">
    
     .d1{
         margin-top:100px;
         margin-left:40%;
         padding:20px;
         position:inherit;
         height: 315px;
         width: 480px;
     }
    
      
 
     #TextBox1 {
         margin-left:60px;
         
     }
     #TextBox2 {
         margin-left: 60px;
         
     }

    #TextBox3
     {
         margin-left: 60px;
       
     }

     #Button1 {
         background-color:rgb(0,150,136);
         opacity:0.6;
         
         margin-top: 20px;
         margin-bottom: 20px;
     }
     #Button2 {
        margin-left:60px;
     }
     #Label4{
        color:white;
     }
     #bodyshow{
           background-image:url(Image/BackGroundPhoto/4.jpg) ;
           background-size:cover;
           background-repeat:no-repeat;
          
     }
     #form1 {
         height: 656px;
         width: 1423px;
     }
     .auto-style1 {
         height: 27px;
     }
     .auto-style2 {
         width: 291px;
     }
     .auto-style3 {
         height: 27px;
         width: 291px;
     }
     h1 {
         color:aliceblue;
         
     }
     table{
         border:1px dotted white;
     }
     td{
         border:1px dotted white;
     }
     tr {
         border:1px dotted white;
     }
 </style>
    <script type="text/javascript">
         var currentImage = 0;//当前图片的索引
         var imagearr = ['1.png','2.jpg','3.jpg','4.jpg','5.jpg','6.jpg','7.jpg'];//定义数组存放图片
         setInterval("changImg1()",400);
         function changImg1() {
             if (currentImage >= imagearr.length) {
                 //如果索引超过图片数量，则从第一张图片开始
                 currentImage = 0;
             }
             else {
                 currentImage++;
             }
         var background = document.getElementById("bodyshow");

             background.style.backgroundImage = "url(Image/BackGroundPhoto" + imagearr[currentImage] + ")";
          
          </script>
   
</head>
 <body id ="bodyshow">
     
  <form id="form1" runat="server"   method="post">
          
      <div class="d1">
          <table>
              <caption>
                  <h1>VR校园导航</h1></caption>
             <tr>
                 <td> <asp:Label for =" number" ID="Label1" runat="server" Text="账号" ></asp:Label></td>
                 <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
             </tr>
             <tr>
                 <td><asp:Label ID="Label3" runat="server" Text="密码"></asp:Label></td>
                 <td class="auto-style2"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="验证码"></asp:Label></td>
                 <td class="auto-style3"><asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Password"></asp:TextBox></td>
                 <td class="auto-style1"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
             </tr>
             <tr>
                 <td colspan="2"><asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="登录" Width="359px" /></td>
             </tr>
             <tr>
                 <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                 <td class="auto-style2">
                     <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click1" />
                 </td>
             </tr>
         </table>
      </div>
    </form>
</body>
</html>
