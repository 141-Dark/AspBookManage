<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tribune.aspx.cs" Inherits="WebApplication2.User.Iframe_Content.View_Tribune.Tribune" %>

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
                    <span class="glyphicon glyphicon-home"></span>所有贴吧
		        </a>
	        </li>

	        <li><a href="#View_Boook" data-toggle="tab" target="1"><span class="glyphicon glyphicon-user"></span>所有博主</a></li>

	        <li class="dropdown">
		          <a href="#" id="myTabDrop1" class="dropdown-toggle"  data-toggle="dropdown">添加操作<b class="caret"></b></a>
		            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#cart" tabindex="-1" data-toggle="tab" target="1"><span class="glyphicon glyphicon-plus"></span>发表帖子</a></li>
			            <li><a href="#jmeter" tabindex="-1" data-toggle="tab" target="1"><span class="glyphicon glyphicon-tags"></span> 我的帖子</a></li>
			            <li><a href="#ejb" tabindex="-1" data-toggle="tab" target="1"><span class="glyphicon glyphicon-heart-empty"></span>喜欢的博主</a></li>
		            </ul>
	        </li>
        </ul>

        <div id="myTabContent" class="tab-content back_size">
	        <div class="tab-pane fade in active" id="home">
		        <iframe src="../../../ComAndRep.aspx"></iframe>
	        </div>

	        <div class="tab-pane fade" id="View_Boook">
		        <p>查看所有博主</p>
	        </div>

	        <div class="tab-pane fade size" id="cart">
		        <iframe src="../../../Tribune.aspx" class="iframe1"></iframe>
	        </div>

            
	        <div class="tab-pane fade" id="jmeter">
		        <p>发表过的帖子</p>
	        </div>
	        <div class="tab-pane fade size" id="ejb">
		        <p>喜欢的博主</p>
	        </div>
        </div>
    </form>
</body>
</html>