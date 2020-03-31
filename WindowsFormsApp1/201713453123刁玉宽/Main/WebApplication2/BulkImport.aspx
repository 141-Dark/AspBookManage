<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BulkImport.aspx.cs" Inherits="WebApplication2.BulkImport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="导入excel" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
