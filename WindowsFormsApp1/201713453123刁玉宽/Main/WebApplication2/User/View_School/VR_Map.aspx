<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VR_Map.aspx.cs" Inherits="WebApplication2.User.View_School.VR_Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
     iframe {
        height:680px;
        background-color:cornflowerblue;
        width:98%;
    }
    
</style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <ul id="myTab" class="nav nav-tabs">
	        <li class="active">
		        <a href="#home" data-toggle="tab">
                    <span class="glyphicon glyphicon-eye-open"></span>校园美景
		        </a>
	        </li>

	        <li><a href="#View_Boook" data-toggle="tab" target="1"><span class="glyphicon glyphicon-user"></span>校园导航</a></li>

	        <li class="dropdown">
		          <a href="#" id="myTabDrop1" class="dropdown-toggle"  data-toggle="dropdown">校园视角<b class="caret"></b></a>
		            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#cart" tabindex="-1" data-toggle="tab" target="1"><span class="glyphicon glyphicon-plus"></span>雨花湖</a></li>
			            <li><a href="#jmeter" tabindex="-1" data-toggle="tab" target="1"><span class="glyphicon glyphicon-tags"></span> 民族博物馆</a></li>
			            <li><a href="#ejb" tabindex="-1" data-toggle="tab" target="1"><span class="glyphicon glyphicon-heart-empty"></span>民大图书馆</a></li>
		            </ul>
	        </li>
        </ul>

        <div id="myTabContent" class="tab-content back_size">
	        <div class="tab-pane fade in active" id="home">
		       <iframe src="../../期末作业/网站/民族大学.html"></iframe>
	        </div>

	        <div class="tab-pane fade" id="View_Boook">
		       <iframe src="../../VRTEST.html"></iframe>
	        </div>

	        <div class="tab-pane fade size" id="cart">
		        <p>群聊</p>
	        </div>

            
	        <div class="tab-pane fade" id="jmeter">
		        <p>好友</p>
	        </div>
	        <div class="tab-pane fade size" id="ejb">
		        <p>喜欢的人</p>
	        </div>
        </div>
    </form>
</body>
</html>