<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebSite1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .header{
		    width:1502px;
		    height:50px;
		    border:2px double #e3e4e5;
		    margin:0;
            background-color:#e3e3e5;
            font-size:50px;
            padding:2px;
        }
        .choose{
	        width: 200px;
	        height: 677px;
	        border: 2px double gray;
	        position: absolute;
	        top: 73px;
	        left: 0px;
	        background-color:#e3e4e5;
            color:aliceblue;
	    }
        #iframe1{
            position:absolute;
            top:64px;
		    left:191px;
		    border:2px solid aliceblue;
            height: 685px;
            width: 1302px;
            margin-left: 17px;
            margin-top: 8px;
        }
       a {
           color:aliceblue;
           text-decoration:none;
       }
</style>

</head>
<body>
<div class="header">图书管理系统</div>
<div class="choose">
    <details><summary>图书管理</summary><section>
    <ol>
        <li><a href="BookIformation.aspx" target="1"><font color="#FDFCFC">图书信息</font></a> </li>
    </ol>  
    </section></details>
     
    <details><summary>用户管理</summary><section>
    <ol>
        <li><a href="UserManage/Borrow.aspx" target="1">用户借书</a> </li>
        <li><a href="UserManage/Return.aspx" target="1">用户还书</a> </li>
        <li><a href="UserManage/Recommend.aspx" target="1">用户推荐</a></li>
        <li><a href="UserManage/Teacher.aspx" target="1">教师信息管理</a> </li>
        <li><a href="UserManage/Student.aspx" target="1">学生信息管理</a> </li>
    </ol>  
    </section></details>
     
    <details><summary>管理员信息</summary><section>
    <ol>
        <li><a href="Administrator/manager.aspx" target="1">查看信息</a></li>
    </ol>  
    </section></details>
     
</div>

<iframe  name="1" src="Administrator/heads.aspx" id="iframe1"></iframe>
</body>
</html>
