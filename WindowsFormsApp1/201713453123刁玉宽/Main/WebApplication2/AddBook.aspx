<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="WebApplication2.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #d1 {
            width:40%;
            height:20%;
            
        }
        #d2 {
            width:40%;
            height:20%;
            
        }
        #Image1 {
            border:1px dashed black;
        }

        .auto-style1 {
            width: 282px;
            height: 109px;
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div id="d1">
            <table>
                <tr>
                    <td>书名</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>编号</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>出版社</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>作者</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>类型</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>图书</asp:ListItem>
                            <asp:ListItem>资料</asp:ListItem>
                            <asp:ListItem>手稿</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>封面</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="预览图片" OnClick="Button1_Click" Height="44px" />
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="236px" Width="287px" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="书籍描述"></asp:Label>
                    </td>
                    <td>
                        <textarea id="TextArea1" runat="server" class="auto-style1" name="TextArea1"></textarea></td>
                </tr>
           </table>
            <br />

            <asp:Button ID="Button2" runat="server" BackColor="#66FF33" ClientIDMode="AutoID" Height="52px" OnClick="Button2_Click" style="margin-right: 3px" Text="添加" Width="415px" />
            <%--  --%>
        </div>

        <div id="d2">
            <table>
                
            </table>
        </div>
    </form>
</body>
</html>
