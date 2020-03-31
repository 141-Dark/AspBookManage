<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImagePost.aspx.cs" Inherits="WebApplication2.ImagePost" %>

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
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" />
                    </td>
                </tr>
                
                
                
            </table>
                    <asp:Button ID="Button2" runat="server" Text="查看图片" OnClick="Button2_Click" Width="342px" />
        </div>
    </form>
</body>
</html>
