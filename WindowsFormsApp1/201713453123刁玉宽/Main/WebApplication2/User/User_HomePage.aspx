<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_HomePage.aspx.cs" Inherits="WebApplication2.User.User_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <style type="text/css">
      
     #d1 {
         width:100%;
         height:80px;
         z-index:1;
         position:absolute;
         color:aliceblue;
     }
     #iframe1{
         width:100%;
         height:100%;
         z-index:0;
         position:absolute;
     }
     .auto-style1 {
         height: 92%;
     }
     ul {
         margin-top:20px;
         margin-right:20px;
         float:right;
         display:block;
     }
     li {
         margin-left:40px;
         font-size:20px;
         list-style-type:none;
         display:inline;
         
     }
     a {
        color:aliceblue;
        text-decoration:none;
     }
     a:hover, a:focus {
       color: blue;
       text-decoration: underline;
     }

     a:focus {
       outline: thin dotted #333;
      outline: 5px auto -webkit-focus-ring-color;
      outline-offset: -2px;
     }
 </style>
  <script type="text/javascript">

  </script>
</head>
<body id="body" style="height: 700px">
    <div id="d1">
        <ul >
            <li><a href="MainView.aspx" target="1" title="本页就是主页，你还想去哪里呢？">主页</a></li>
            <li><a href="../VRTEST.html" target="1">民大导航</a></li>
            <li><a href="User_MoreExperience.aspx" target="1">更多体验</a></li>
            <li><a href="../期末作业/网站/民族大学.html" target="1">民大美景</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
            <li><a href="User_Register.aspx" class="tooltip-show" data-toggle="tooltip" title="支持第三方登录" target="1"><span class="glyphicon glyphicon-log-in "></span> 登录</a></li>
        </ul>
    </div>
    <iframe  name="1" src="MainView.aspx" id="iframe1" class="auto-style1"></iframe>
</body>
</html>
