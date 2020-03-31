<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gift_Store.aspx.cs" Inherits="WebApplication2.User.Iframe_Content.View_Book.Gift_Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <ul id="myTab" class="nav nav-tabs">
	        <li class="active">
		        <a href="#home" data-toggle="tab">
                    <span class="glyphicon glyphicon-home"></span>民大手工坊
		        </a>
	        </li>

	        <li><a href="#View_Boook" data-toggle="tab" target="1">跳蚤市场</a></li>

	        <li class="dropdown">
		          <a href="#" id="myTabDrop1" class="dropdown-toggle"  data-toggle="dropdown">校园超市<b class="caret"></b></a>
		            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                        <li><a href="#cart" tabindex="-1" data-toggle="tab" target="1">教育超市</a></li>
			            <li><a href="#jmeter" tabindex="-1" data-toggle="tab" target="1">金桥二手书屋</a></li>
			            <li><a href="#ejb" tabindex="-1" data-toggle="tab" target="1">芷苑水果店</a></li>
		            </ul>
	        </li>
        </ul>

        <div id="myTabContent" class="tab-content back_size">
	        <div class="tab-pane fade in active" id="home">
		        <p>学生手工DIY</p>
	        </div>

	        <div class="tab-pane fade" id="View_Boook">
		        <p>学生之间的商品交换</p>
	        </div>

	        <div class="tab-pane fade size" id="cart">
		        <p>假货有点多</p>
	        </div>

            
	        <div class="tab-pane fade" id="jmeter">
		        <p>旧书价格堪比新书</p>
	        </div>
	        <div class="tab-pane fade size" id="ejb">
		        <p>周三打八折</p>
	        </div>
        </div>
    </form>
</body>
</html>
