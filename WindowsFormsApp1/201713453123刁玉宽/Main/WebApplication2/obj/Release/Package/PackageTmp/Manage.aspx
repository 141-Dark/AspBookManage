<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .head{
		  width:1502px;
		  height:50px;
		  border:rgb(102,102,102) double 2px;
		  margin:0px;
          background-color:#009688;
          font-size:50px;
          padding:2px;
        }
     .div1{
	    width: 200px;
	    height: 677px;
	    border: rgb(102,102,102) 2px double;
	    position: absolute;
	    top: 73px;
	    left: 0px;
	    background-color:#3A3D49;
        color:aliceblue;
	 }
      #iframe1{position:absolute;
	     top:64px;
		 left:191px;
		 border:solid rgb(102,102,102) 2px;
		 background-image:url('imags/IMG_7732.JPG');
            height: 685px;
            width: 1302px;
            margin-left: 17px;
            margin-top: 8px;
        }
	  
	   #iframe2{
	    position: absolute;
	    top: 599px;
	    left: 311px;
	    height: 411px;
	    border: solid rgb(102,102,102) 2px;
	    width:1200px;
	    height:400px;
	    background-image:url(imags/AB79CF6BF4E5F803947A3D23E2616BED.png); 
	  }
	  
	  #iframe3{
		  height:927px;
		  width:400px;
		  position:absolute;
		  top:80px;
		  right:0px;
  }
  .d{
	  margin:5px;
  }
   
  .d1 {
      color:aliceblue;
     text-decoration:none;
    }
   a {
        color:aliceblue;
        text-decoration:none;
        }
</style>

</head>
<body>
    <form id="form1" runat="server">
 <div class="div1">
      <details><summary>地图定位</summary><section>
     <ol>
        <li><a href="AddBook.aspx" target="1"><font color="#FDFCFC">3D地图导航</font></a> </li>
         <li><a href="BookIformation.aspx" target="1"><font color="#FDFCFC">VR导航</font></a> </li>
     </ol>  
     </section></details>
     
     <details><summary>报到攻略</summary><section>
     <ol>
        <li><a href="ManageUser/UserBrBook.aspx" target="1">查看报到点</a> </li>
         <li><a href="ManageUser/UserReBook.aspx" target="1">购买生活用品</a> </li>
          <li><a href="ManageUser/Teacher.aspx" target="1">找回信息</a> </li>
         <li><a href="ManageUser/Student.aspx" target="1">校园浏览</a> </li>
         <li><a href="ManageUser/UserRecommend.aspx" target="1">校园一键游</a> </li>
     </ol>  
     </section></details>
     
       <details><summary>我的空间</summary><section>
     <ol>
        <li><a href="Administrator/Worker.aspx" target="1">附近的人</a> </li>
         <li><a href="Administrator/Main.aspx" target="1">我的消息</a> </li>
     </ol>  
     </section></details>
     
      </div>

<iframe  name="1" src="VRTEST.html" id="iframe1"></iframe>


    <div class="head">欢迎来到VR校园导航</div>
 

    </form>
 

</body>
</html>
