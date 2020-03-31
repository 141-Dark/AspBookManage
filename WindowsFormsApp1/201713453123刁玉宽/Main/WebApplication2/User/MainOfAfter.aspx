<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainOfAfter.aspx.cs" Inherits="WebApplication2.User.MainOfAfter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style type="text/css">
      .ul1 {
         margin-top:20px;
         margin-right:10px;
         float:right;
         display:block;
     }
      .ul2 {
         margin-top:20px;
         margin-right:20px;
         float:right;
         display:block;
         padding:8px;
     }
     .li1 {
         margin-left:2px;
         font-size:20px;
         list-style-type:none;
         display:inline;
         
     }
     .li2 {
         margin-left:1px;
         font-size:20px;
         list-style-type:none;
         display:inline;
         
     }
      .li3 {
         margin-left:1px;
         font-size:20px;
         list-style-type:none;
         display:inline;
         
     }
      .li4 {
         margin-left:10px;
         font-size:15px;
         color:aliceblue;
         list-style-type:none;
         display:inline;
     }
      .li5 {
          color:aliceblue;
         margin-left:10px;
         font-size:15px;
         list-style-type:none;
         display:inline;
         
     }
      body {
          background-image:url(../Image/BackGroundPhoto/300491.jpg) ;
           background-size:cover;
           background-repeat:no-repeat;
           margin:0;
        }
       .btn-default {
           background-color:cornflowerblue;
       }
       .mar {
           margin-top:23px;
       }
        a {
        color:aliceblue;
        text-decoration:none;
     }
     a:hover,
     a:focus {
       color: blue;
       text-decoration: underline;
     }
     a:focus {
       outline: thin dotted #333;
      outline: 5px auto -webkit-focus-ring-color;
      outline-offset: -2px;
     }
       .bigfont {
           font-size:60px;
           color:aliceblue;
           margin-top:3%;
           margin-left:28%;
           height:70px;
           
       }
       .carousel-inner {
           margin-top:2%;
       }
       .img1 {
           width:700px;
           height:600px;
           margin-left:20%;
       }
       .head {
           background-color:cornflowerblue;
       }
   </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container head">
            <div class="row">
                <div class="col-md-4">
                    <ul class="ul2">
                        <li class="li5"><a href="ynni.edu.cn/web/11403/home"><span class="glyphicon glyphicon-home"></span> 校园主页</a></li>
                        <li class="li5"><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> 购物车</a></li>
                        <li class="li5"><a href="#"><span class="glyphicon glyphicon-flag"></span> 校园VR导航系统</a></li>
                    </ul>
                </div>

                <div class="col-md-4">
                      <div class="input-group input-group-sm mar" style="left: 0px; top: 0px">
                           <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                           <input type="text" class="form-control" placeholder="搜索相关内容"/>
                      </div>
                </div>
                <div class="col-md-4">
                    <ul class="ul1">
                <li class="li1">
                    <asp:Image ID="Image1" runat="server" Height="34px" Width="34px" ImageUrl="~/Image/touxiang1.JPG"  class="img-circle" />
                </li>
                <li class ="li3">
                    <asp:Image ID="Image3" runat="server" Height="30px" Width="32px" ImageUrl="~/Image/xiaoxi.png"   />
                </li>
                <li class="li2">
                    <!--下拉按钮,触发dropdown事件-->
                    <div class="btn-group">
                        <asp:Button ID="Button1" runat="server" Text="匿名" class="btn btn-default dropdown-toggle" data-toggle="dropdown" Height="32px" Width="73px" OnClick="Button1_Click"/>
                        <ul class="dropdown-menu">
                           <li><a href="#">修改个人信息|设置头像</a></li>
                           <li><a href="#">相关设置</a></li>
                            <li><a href="DoAll.aspx">个人中心</a></li>
                           <li><a href="#">退出登录</a></li>
                       </ul>
                    </div>
                </li>
            </ul>
                </div>
            </div> 
        </div>
        <div class="bigfont">打造属于你的个人校园平台</div>
        <div id="myCarousel" class="carousel slide">

     	<!-- 轮播（Carousel）指标 -->
	    <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
	    </ol>   
	    <!-- 轮播（Carousel）项目 -->
        <div class="container">
            <div class="row">
               <div class="col-md-12">
                    <div class="carousel-inner">
		            <div class="item active">
			            <img class="img1" src="../Image/192609.jpg" alt="First slide"/>
		            </div>
		            <div class="item">
			            <img class="img1" src="../Image/217437.jpg" alt="Second slide"/>
		            </div>
		            <div class="item">
			            <img class="img1" src="../Image/249328.jpg" alt="Third slide"/>
		            </div>
                    <div class="item">
			            <img class="img1" src="../Image/321300.jpg" alt="Four slide"/>
		            </div>
	                </div>
	                <!-- 轮播（Carousel）导航 -->
	                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		                <span class="sr-only">Previous</span>
	                </a>
	                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		                <span class="sr-only">Next</span>
	                </a>
                </div> 
               </div>
            </div>
       </div>
	    
    </form>
</body>
</html>
