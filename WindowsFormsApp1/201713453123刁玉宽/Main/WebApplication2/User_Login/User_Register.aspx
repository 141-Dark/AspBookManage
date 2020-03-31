<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Register.aspx.cs" Inherits="WebApplication2.User.User_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
    .table-striped {
        margin-left:40%;
        margin-top:10%;
        
    }
    hr{
        border:groove 1px;
        border-color:cornsilk;
    }
    .center-block {
       margin-left:44%;
    }
    .qq {
        background-image:url("../Image/BackgroundPhoto/qq.png");
    }
    #ImageButton1 {

    }
    ul {
         margin-top:1px;
         margin-left:38%;
         float:left;
         display:block;
     }
     li {
         margin-left:5px;
         font-size:20px;
         list-style-type:none;
         display:inline;
         
     }
</style>
<script type="text/javascript">
    function checkNull(form) {
        //检查表单内容是否为空
        for (i = 0; i < form.length; i++) {
            if (form.elements[i].value == "") {
                alert("抱歉" + form.elements[i].title + "不能为空");
                form.elements[i].focus();
                return false;
            }
        }
    }
</script>
</head>
<body>
    <div class="container" >
        <div class="row">
            <form id="form1" title="form1" name="form1" class="bs-example bs-example-form " runat="server" onsubmit="checkNull(form1)" >
                 <table class="table-striped" >
                      <caption  style="text-align:center"><h1>用户登录</h1></caption>
                      <tr style="margin-bottom:10px;">
                          <td><asp:TextBox title="账号" ID="TextBox1" class="form-control control-label " runat="server" Width="241px"  placeholder="输入账号" ></asp:TextBox></td>
                      </tr>
           
                       <tr>
                           <td>
                               <asp:TextBox ID="TextBox2" title="密码" class="form-control" runat="server" Width="241px" placeholder="输入密码"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Button ID="Button1" runat="server" class="btn  btn-primary" data-loading-text="Loading..." Text="登录" Width="241px" />
                           </td>
                       </tr>
               </table>
                
               <br />
              <span class="center-block">使用第三方账号登录</span>
             <hr style="font-size:2px"/>
             
            <ul>
                <li><asp:ImageButton ID="ImageButton1" runat="server" Height="45px" Width="58px" ImageUrl="~/Image/qq.png" /></li>
                <li>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="45px" Width="58px" ImageUrl="~/Image/weixin.png" />
                </li>
                <li>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="45px" Width="58px" ImageUrl="~/Image/weibo.png"  />
                </li>
            </ul>
             
        
           </form>
       </div>
  </div>
</body>
</html>
