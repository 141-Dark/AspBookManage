<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" />
                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                    <asp:BoundField DataField="Press" HeaderText="Press" SortExpression="Press" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:CheckBoxField DataField="Books" HeaderText="Books" SortExpression="Books" />
                    <asp:CheckBoxField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    <asp:CheckBoxField DataField="ManuScripts" HeaderText="ManuScripts" SortExpression="ManuScripts" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManageBookConnectionString2 %>" DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Book] ([BookID], [BookName], [Press], [Author], [ISBN], [Books], [Data], [ManuScripts]) VALUES (@BookID, @BookName, @Press, @Author, @ISBN, @Books, @Data, @ManuScripts)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [Press] = @Press, [Author] = @Author, [ISBN] = @ISBN, [Books] = @Books, [Data] = @Data, [ManuScripts] = @ManuScripts WHERE [BookID] = @BookID">
                <DeleteParameters>
                    <asp:Parameter Name="BookID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BookID" Type="String" />
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="Press" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="ISBN" Type="String" />
                    <asp:Parameter Name="Books" Type="Boolean" />
                    <asp:Parameter Name="Data" Type="Boolean" />
                    <asp:Parameter Name="ManuScripts" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="Press" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="ISBN" Type="String" />
                    <asp:Parameter Name="Books" Type="Boolean" />
                    <asp:Parameter Name="Data" Type="Boolean" />
                    <asp:Parameter Name="ManuScripts" Type="Boolean" />
                    <asp:Parameter Name="BookID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
