<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tribune.aspx.cs" Inherits="WebApplication2.Tribune" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 449px;
            height: 151px;
        }

     table{
           margin:3px;
        border:1px dotted white;
     }
     td{
         border:1px dotted white;
     }
     tr {
         border:1px dotted white;
       
     }
     body{
           background-image:url(Image/BackGroundPhoto/8.jpg) ;
           background-size:cover;
           background-repeat:no-repeat; 
     }
        #d1 {
            width:600px;
            height:500px;
            margin-left:25%;
            margin-top:8%;
        }
        #TextBox1 {
            font-size:25px;
            color:blue;
            opacity:0.5;
        }
        #Label1,#Label2,#Label3,#Label4{
            color:aliceblue;
            font-size:20px;
        }
        #TextArea1 {
            font-size:20px;
            color:blue;
            opacity:0.5;
        }
        #FileUpload1, #FileUpload2 {
             opacity:0.5;
        }
        .auto-style2 {
            width: 131px;
        }
        #ca {
            color:aliceblue;
        }
        #Button1, #Button2 {
            background-color:cornflowerblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="d1">
            <table>
                <caption id ="ca">
                    <h1>论坛发帖</h1>
                </caption>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="帖子名称"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="450px" Height="36px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style2">        
                        <asp:Label ID="Label2" runat="server" Text="帖子主要内容"></asp:Label>
                    </td>
                    <td>
                        <textarea id="TextArea1" name="S1" runat="server" class="auto-style1"></textarea>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">

                        <asp:Label ID="Label3" runat="server" Text="上传附件"></asp:Label>

                    </td>
                    <td>

                        <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="457px" />

                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="添加图片"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" Height="34px" Width="457px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="Button1" runat="server" Height="43px" Text="发布" Width="291px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Height="43px" Text="清空" Width="289px" OnClick="Button2_Click" /></td>
                </tr>
            </table>
            
        </div>
        
    </form>
</body>
</html>
