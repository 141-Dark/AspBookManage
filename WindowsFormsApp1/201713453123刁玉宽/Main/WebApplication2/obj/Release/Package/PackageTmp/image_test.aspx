<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="image_test.aspx.cs" Inherits="WebApplication2.image_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
            <table>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="导入图片" OnClick="Button1_Click1" /></td>
                    <td>
                       <asp:FileUpload ID="FileUpload2" runat="server" /> 
                    </td> 
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="预览图片" OnClick="Button2_Click" style="height: 27px" />
                    </td>
                    <td>     
                        <asp:Image ID="Image1" runat="server" Height="189px" Width="283px" />
                    </td> 
                </tr>
                 
            </table>
        </div>
       
    </form>
</body>
</html>
