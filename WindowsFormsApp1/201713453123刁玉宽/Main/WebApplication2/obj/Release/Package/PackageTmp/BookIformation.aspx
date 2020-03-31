<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookIformation.aspx.cs" Inherits="WebApplication2.BookIformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height:605px;
            width:100%;
            position:absolute;
            top: 13px;
            left: 10px;
        }
        .img1 {
            height:271px;
            width:527px;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound"  DataSourceID="SqlDataSource2" Height="428px" Width="736px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            
            <ItemTemplate>
                <table>
                    <tr>
                        <td rowspan="4"><asp:Image ID="pictureLabel" Height="250px" Width="120px" runat="server" ImageUrl='<%# Eval("picture") %>' /></td>
                        <td>书名：<asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' /></td>
                    </tr>
                    <tr>
                        <td>作者：<asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' /></td>
                    </tr>
                    <tr>
                        <td>类型：<asp:Label ID="booktypeLabel" runat="server" Text='<%# Eval("booktype") %>' /></td>
                    </tr>
                    <tr>
                        <td>简介：<asp:Label ID="describeLabel" runat="server" Text='<%# Eval("describe") %>' /></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <FooterTemplate>

                <asp:Label ID="labCurrentPage" runat="server" Text="Label"></asp:Label>
                /<asp:Label ID="labPageCount" runat="server" Text="Labe2"></asp:Label>
                <asp:LinkButton ID="lnkbtnFirst" runat="server" CommandName="first">首页</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnFront" runat="server" CommandName="pre">上一页</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnNext" runat="server" CommandName="next">下一页</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnLast" runat="server" CommandName="last">尾页</asp:LinkButton>

                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="55px"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="search">跳转</asp:LinkButton>

            </FooterTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString2 %>" SelectCommand="SELECT [picture], [BookName], [Author], [describe], [booktype] FROM [Book]"></asp:SqlDataSource>
        
     </form>   
</body>
</html>
