<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolFellowes.aspx.cs" Inherits="WebApplication2.User.View_School.SchoolFellowes" %>

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
                    <span class="glyphicon glyphicon-home"></span>知名校友
		        </a>
	        </li>

	        <li><a href="#View_Boook" data-toggle="tab" target="1"><span class="glyphicon glyphicon-user"></span>学院牛人</a></li>
            <li><a href="#cart" data-toggle="tab" target="1"><span class="glyphicon glyphicon-user"></span>就业榜</a></li>
	        
        </ul>

        <div id="myTabContent" class="tab-content back_size">
	        <div class="tab-pane fade in active" id="home">
		        <p>查看知名校友</p>
	        </div>

	        <div class="tab-pane fade" id="View_Boook">
		        <p>学院比较厉害的人</p>
	        </div>

	        <div class="tab-pane fade size" id="cart">
		        <p>校园就业榜单</p>
	        </div>
        </div>
    </form>
</body>
</html>
