<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Store.aspx.cs" Inherits="WebApplication2.User.Iframe_Content.View_Book.Book_Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<style type="text/css">
     .iframe1 {
        height:680px;
        background-color:cornflowerblue;
        width:98%;
    }
    
</style>

<body>
    <form id="form1" runat="server">
         <ul id="myTab" class="nav nav-tabs">
	        <li class="active">
		        <a href="#home" data-toggle="tab">
                    <span class="glyphicon glyphicon-home"></span>主页
		        </a>
	        </li>

	        <li><a href="#View_Boook" data-toggle="tab" target="1">查看图书</a></li>

	        <li class="dropdown">
		          <a href="#" id="myTabDrop1" class="dropdown-toggle"  data-toggle="dropdown">图书购买<b class="caret"></b></a>
		            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#cart" tabindex="-1" data-toggle="tab" target="1">购物车</a></li>
			            <li><a href="#jmeter" tabindex="-1" data-toggle="tab" target="1">我的订单</a></li>
			            <li><a href="#ejb" tabindex="-1" data-toggle="tab" target="1">已购图书</a></li>
		            </ul>
	        </li>
        </ul>

        <div id="myTabContent" class="tab-content back_size">
	        <div class="tab-pane fade in active" id="home">
		        <iframe src="../../../BookIformation.aspx" class="iframe1"></iframe>
	        </div>

	        <div class="tab-pane fade" id="View_Boook">
		        <p>以GridView的形式查看所有书籍，并可以加入购物车</p>
	        </div>

	        <div class="tab-pane fade size" id="cart">
		        <p>显示购物车内的所有东西，并加入订单</p>
	        </div>

            
	        <div class="tab-pane fade" id="jmeter">
		        <p>这里包含了所有的订单</p>
	        </div>
	        <div class="tab-pane fade size" id="ejb">
		        <p>这里是已经购买的图书</p>
	        </div>
        </div>
    </form>
</body>
</html>
