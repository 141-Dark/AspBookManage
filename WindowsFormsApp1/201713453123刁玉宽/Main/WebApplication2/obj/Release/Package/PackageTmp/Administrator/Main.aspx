<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication2.Administrator.Main" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 631px;
        }
        .Image1{
            
        }
        .d1 {
             background-image:url(E:/数据库查询UI界面/图片/9.jpg);
             background-size:cover;
             background-repeat:no-repeat;
            height:280px;
            width:380px;
            border:solid 0.4px;
            padding:1px;
           float:left;
        }
        .d2{
             margin-left:390px;
             background-size:cover;
             background-repeat:no-repeat;
            height:280px;
            width:380px;
            border:solid 0.2px;
            padding:1px;
            margin-left:390px;
            display:block;
            padding:4px;
        }
         .d3 {
            border-style: solid;
            border-color: inherit;
            border-width: 0.5px;
            display:block;
            height:126px;
            width:155px;
            margin-bottom:22px;
            background-color:rgb(0,150,136);
        }
        .d4 {
            background-color:rgb(254,184,0);
            border-style: solid;
            border-color: inherit;
            border-width: 0.5px;
            margin-bottom:22px;
            display:block;
            height:126px;
            width:155px;
            float:right;
            margin-left:220px;
        }
        .d5 {
            background-color:rgb(30,158,255);
            border-style: solid;
            border-color: inherit;
            border-width: 0.5px;
            display:block;
            height:126px;
            width:155px;
        }
        .d6 {
            background-color:rgb(254,87,34);
            display:block;
            height:126px;
            width:155px;
            border:solid 0.5px;
            margin-left:120px;
              margin-left:220px;
        }
       
        .first {
            height:300px;
            width:50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"> 
        <div class="d1"></div>

        <div class="d2">
            <div class="d3">
            <div class="d4"></div>
            </div>
            <div class="d5">
            <div class="d6"></div>
            </div>
        </div>
        
    </form>
    <p>
&nbsp;</p>
</body>
</html>
