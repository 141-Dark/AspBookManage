<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComAndRep.aspx.cs" Inherits="WebApplication2.ComAndRep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-right: 158px;
        }
        #Button1 {
            background-image:url(Image/图标/导入.png)
        }
      @font-face {font-family: "iconfont";
              src: url('iconfont.eot?t=1574512543109'); /* IE9 */
              src: url('iconfont.eot?t=1574512543109#iefix') format('embedded-opentype'), /* IE6-IE8 */
              url('data:application/x-font-woff2;charset=utf-8;base64,d09GMgABAAAAAASAAAsAAAAACQwAAAQzAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHEIGVgCDKgqFMIQrATYCJAMUCwwABCAFhG0HSxuyBxGVnNHIfgy4G1NGZWYlUX7XhJafUQVyzCfnQ3l+b5pUST5gHpfThbIAmKVP5eH7y/fct/ftr8USKhWrVfBMtINk4gEOSoS/0W6saRl07yLUk+zVoafZx+SB8yn6OTE1pSbkJtz+uJ/6YztPz2ff5hKZlHk+HOB4QAOKLrCBhcgEfYvsjkAtejUQAId93khyanYxVEgYnQiAdHe0NUCVMiFrKAR9bVsykk0n0yFHXzZRdhnANP/75CMCQwUyVAbGWvmtKc2Il1KkYwzVUtUMBR3OAYAbBwzAG8AC6Sx1NYMJo94YDJV0FrcAlekoMFQ8Vzqm1VLsqGQrqj79wwOCggYJRAFDJRByfIwFKcUmgICUS4AMpKMEMCAdkzwUlZy05wB6gGsAYRDZWiEze1a0OoK5gtU1JDqskW6Q+xpD6XpOd+5GzSZeT9zQevt18Z03Jffelt2Vhs42bl4/ybN1runqzVAsuRFisO+WnVKztX+OaNamP9RIZdikUzZPNCmBfvgHlzG8rGyTeIS6F3OlGzXHRI8Bji5YI65bpFm4dtLq+eCduvhz98yWbU09fT1479XQs9tt5txp4G7ft1lxJ0WvdAenZQ/L58yhszkOv+s3EsJNmquZZ8YTbi6pvYjnS+cuWrfGpIQvm8e8vcC4mBcX0NnGHF4nmDWYUL1k3cjnQXZBepG6yXHfdmlvzz4w+a7AkcW1kLZrMKP97pkDGRfwfed11gyxSDAt7v/QkGSaYDEkfrqB0uDA5pFAEwUwUsJk8bLjZVHctHGTGPZ8fKn7Er3U0e4YXBLkdOoUtYY5BbUEBQQc9xJWRZpFrjJzdwGSKIAp7++7x49RG2xJSKhPbHjwX/7KSJ2+i0nYq332Y874s4n5pMsgIZ/1H31mac/2rxZfhb5s/R0r9LP7BWGm7f3O/du/mj8XsnOmZ5R4lZRXb5FTfUZLOHdl9vQ04bn51+19zl5LPYWVUaZZK81WZZpOWTdcSQ3dqNzAUJ9BU4myvwgEPy8r35xufvd5FrDr0pchAUzUTfyWxWDx75CWX4ArVaXYXFMWlufKP8iLLjHVlxferWBoiA75lv6G0WzA+YS+TQxFzx40+g7QJF9ANXIJrb47GDp3HD+ywpoi1eDMJ4Iw9w3F1D805n7QJP9CtfUPrXkwMPQcyxlHjqKD2w6iLeiB84LQzTOyrDIICk/o3xKbk1Kf+YFchQHQFS2bOGKGPESf6u4bIgTEeQoHtB4mSQ4F5xG6ogQixVpVqexJipuntYEnDNkE8gDHCwi5chlyy4tB7vMnyHeTsHFNUYX3A2KVsHqgU2gA9KjKQEWXck7lzmcQggDCcilwQA6UmNEcKMqbRZBLKIIO4cKaSkoRVKVMr0nvcQUMGbPUkBGGsEROFOh/t9tZFNr+9rMjs5BOQ/tth+13e0i3Wg0A') format('woff2'),
              url('iconfont.woff?t=1574512543109') format('woff'),
              url('iconfont.ttf?t=1574512543109') format('truetype'), /* chrome, firefox, opera, Safari, Android, iOS 4.2+ */
              url('iconfont.svg?t=1574512543109#iconfont') format('svg'); /* iOS 4.1- */
      }

      .iconfont {
             font-family: "iconfont" !important;
             font-size: 16px;
             font-style: normal;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
      }

      .icon-shanjian:before {
            content: "\e645";
      }

      .icon-xinxi:before {
            content: "\e64e";
       }

      .icon-xiazai:before {
            content: "\e6be";
      }

      .icon-zhifu:before {
            content: "\e6bf";
      }

      .auto-style3 {
           width: 198px;
       }
        #td1 {
            border:1px dotted green;
        }
        #td2 {
            margin-left:20px;
            border:1px dotted blue;
        }
        #td3 {
            margin-left:5px;
            border:1px dotted red;
        }
        tr {
         border:1px dotted white;
     }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="511px" CellPadding="3" ForeColor="Black" BackColor="White" BorderColor="#999999" BorderWidth="1px" DataKeyField="TID" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"  OnItemCommand="DataList1_ItemCommand1" OnItemDataBound="DataList1_ItemDataBound" BorderStyle="Solid" GridLines="Vertical">
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <FooterTemplate>
                    <asp:Label ID="labCurrentPage" runat="server" Text="Label"></asp:Label>
                    /
                    <asp:Label ID="labPageCount" runat="server" Text="Label"></asp:Label>
                    <asp:LinkButton ID="lnkbtnFirst" runat="server"  CommandName="first">首页</asp:LinkButton>
                    <asp:LinkButton ID="lnkbtnFront" runat="server"  CommandName="pre">上一页</asp:LinkButton>
                    <asp:LinkButton ID="lnkbtnNext" runat="server" CommandName="next">下一页</asp:LinkButton>
                    <asp:LinkButton ID="lnkbtnLast" runat="server" CommandName="last">尾页</asp:LinkButton>
                    <asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="65px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="search">跳转</asp:LinkButton>
                </FooterTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table>
                        <tr>
                            <td rowspan="6"><asp:Image ID="Image1" Height="250px" Width="120px" runat="server" ImageUrl='<%# Eval("picture") %>' /></td>
                            <td class="auto-style3"> 楼主ID:<asp:Label ID="AIDLabel" runat="server" Text='<%# Eval("AID") %>' /></td>
                        </tr>

                        <tr>
                            <td class="auto-style3">楼主网名：<asp:Label ID="ANameLabel" runat="server" Text='<%# Eval("AName") %>' /></td>
                        </tr>

                        <tr>
                            <td class="auto-style3">贴吧ID：<asp:Label ID="TIDLabel" runat="server" Text='<%# Eval("TID") %>' /></td>
                        </tr>

                        <tr>
                            <td class="auto-style3">贴吧主题：<asp:Label ID="TNameLabel" runat="server" Text='<%# Eval("TName") %>' /></td>
                        </tr>

                        
                        <tr>
                            <td class="auto-style3">贴吧内容：<asp:Label ID="describeLabel" runat="server" Text='<%# Eval("describe") %>' /></td>
                        </tr>

                        <tr>
                            <td class="auto-style3">下载相关文件： <asp:Button ID="Button1" runat="server" Height="35px" Width="123px"  Text="下载" class="btn btn-primary"/></td>
                        </tr>
                    </table>

                    <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo" style="width: 511px">
	                       查看评论信息
                   </button>

                    <div id="demo" class="collapse">
	                     评论如下:
                        <table>
                        <tr>
                             <td>
                                
                             </td>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control control-label"></asp:TextBox>
                            <td>
                                 <asp:Button ID="Button3" runat="server" Text="评论" OnClick="Button3_Click" class="btn btn-primary" Height="32px"/>
                            </td>
                        </tr>
                     </table>
                        回复如下：
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="456px">
                 <AlternatingItemStyle BackColor="#DCDCDC" />
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                 <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <ItemTemplate>
                     <table>
                         <tr>
                             <td>
                                 <asp:Label ID="Label1" runat="server" Text="刁玉宽：   "></asp:Label>
                             </td>
                             <td>
                                 <asp:Label ID="Label2" runat="server" Text="不错的帖子，文件内容也不错，希望以后多发一点。。"></asp:Label>
                             </td>
                             <td>
                                 <asp:Button ID="Button4" runat="server"  class="btn btn-primary" Text="回复" />
                             </td>
                         </tr>
                    </table>
                    
                 </ItemTemplate>
                 <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 </asp:DataList>
                    </div>
                    
             
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString4 %>" SelectCommand="SELECT * FROM [ComAndRep]"></asp:SqlDataSource>
                    
                </ItemTemplate>

                <SelectedItemStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />

            </asp:DataList>
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString4 %>" SelectCommand="SELECT * FROM [Tribune]"></asp:SqlDataSource>
        <i class="icon-zhifu">&#xe6bf;</i>
        </div>
    </form>
</body>
</html>
