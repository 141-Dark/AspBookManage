<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .reg {
           position:absolute;
           border:double;
           border-color:aqua;
        }
            .reg div span {

                margin:20px;
               
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="reg">
            <div>
                <asp:Label ID="Label1" runat="server" Text="用户名" Width =" 80px"></asp:Label>
            
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="密码" Width =" 80px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="性别" Width =" 80px"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="男" Width =" 80px"/>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="女" OnCheckedChanged="RadioButton2_CheckedChanged" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="电话" Width =" 80px"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="住址" Width =" 80px"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AdministratorName" DataValueField="AdministratorName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString %>" SelectCommand="SELECT [AdministratorName] FROM [Administrator]"></asp:SqlDataSource>

                 

                <br />
                <asp:Button ID="Button1" runat="server" Text="注册" />
                <span></span>
                <asp:Button ID="Button2" runat="server" Text="登录" OnClick="Button2_Click" />

                 

            </div>
        </div>
    </form>
</body>
</html>
