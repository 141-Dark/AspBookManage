<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoAll.aspx.cs" Inherits="WebApplication2.User.DoAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    .container {
        margin-top:10px;
    }
    .iframe1 {
        height:700px;
        background-color:cornflowerblue;
        width:100%;
    }
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
      
       .btn-default {
           background-color:cornflowerblue;
       }
       .mar {
           margin-top:23px;
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
    .foot {
        height:20px;
        width:100%;
        font-size:16px;
        text-align:center;
       
    }
</style>
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
                        <asp:Button ID="Button1" runat="server" Text="刁玉宽" class="btn btn-default dropdown-toggle" data-toggle="dropdown" Height="32px" Width="73px"/>
                        <ul class="dropdown-menu">
                           <li><a href="#">修改个人信息|设置头像</a></li>
                           <li><a href="#">相关设置</a></li>
                            <li><a href="#">个人中心</a></li>
                           <li><a href="#">退出登录</a></li>
                       </ul>
                    </div>
                </li>
            </ul>
                </div>
            </div>
        </div>
        <div class="container">
            
            <div class="row">
                <div class="col-md-3">
                    <ul>
                        <li>
                             <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl="~/Image/touxiang1.JPG"  class="img-circle" />
                        </li>
                    </ul>
                    <ul class="nav nav-pills nav-stacked">
	                    <li class="active"><a href="#" target="1">查看图书</a></li>
	                    <li><a href="Iframe_Content/View_Book/Book_Store.aspx" target="1">我的书店</a></li>
	                    <li><a href="Iframe_Content/View_Book/Gift_Store.aspx" target="1">精品店</a></li>
                    </ul>
                    <ul class="nav nav-pills nav-stacked">
	                    <li class="active" ><a href="#" target="1">查看贴吧</a></li>
	                    <li><a href="Iframe_Content/View_Tribune/Tribune.aspx" target="1">纷纭论坛</a></li>
	                    <li><a href="Iframe_Content/View_Tribune/MyMessage.aspx" target="1">我的消息</a></li>
                    </ul>
                    <ul class="nav nav-pills nav-stacked">
	                    <li class="active"><a href="" target="1">民大视角</a></li>
	                    <li><a href="View_School/SchoolFellowes.aspx" target="1">校友会</a></li>
	                    <li><a href="View_School/VR_Map.aspx" target="1">VR导航</a></li>
                    </ul>
                    <ul class="nav nav-pills nav-stacked">
	                    <li class="active"><a href="" target="1">联系管理员</a></li>
	                    <li><a href="#" target="1">给管理员留言</a></li>
                         <li><a href="#" target="1">在线联系</a></li>
	                    <li><a href="#" target="1">附近的人</a></li> 
                    </ul>
                </div>
                <div class="col-md-9">
                    <iframe name="1" class="iframe1"></iframe>
               </div>
            </div>

            <div class="foot" >©2009 Microsoft Corporation. All rights reserved.版权所有：刁玉宽 邮箱：1418273501@qq.com</div>
        </div>
    </form>
</body>
</html>
