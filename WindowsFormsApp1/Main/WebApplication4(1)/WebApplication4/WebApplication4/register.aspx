<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication4.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .reg
    {
        position:absolute;
        margin:30px auto;
            top: 46px;
            left: 349px;
            height: 563px;
            width: 547px;
            border:1px solid #096;
        }
        .reg div
        {
            margin:20px;
            width:350px;
            height:40px;
            line-height:40px;}
      .reg div span
       {
           display:inline-block;
           width:30px;
           }
       .reg div:nth-child(7)
       {
           margin:80px;
           box-sizing:border-box;
           
           padding-left:90px;
           }
    </style>
   
</head>
<body style="height: 1070px; width: 1181px">
    <form id="form1" runat="server">
    <div class="reg">
    
        <div><asp:Label ID="Label1" runat="server" Text="用户名" Width="80px"></asp:Label><span></span>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        <div><asp:Label ID="Label2" runat="server" Text="密  码 " Width="80px"></asp:Label><span></span>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>
        <div><asp:Label ID="Label3" runat="server" Text="确认密码" Width="80px"></asp:Label><span></span>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div>
        <div><asp:Label ID="Label4" runat="server" Text="性  别" Width="80px"></asp:Label><span></span>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="gender" 
                Checked="True" oncheckedchanged="RadioButton1_CheckedChanged" /><span></span>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="gender" 
                oncheckedchanged="RadioButton2_CheckedChanged" />
                
            </div>
        <div><asp:Label ID="Label5" runat="server" Text="tel    " Width="80px"></asp:Label><span>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></span>
        </div>
         <div><asp:Label ID="Label6" runat="server" Text="住  址" Width="80px"></asp:Label><span>
             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                 DataSourceID="SqlDataSource1" DataTextField="province" 
                 DataValueField="province" 
                 onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                 style="width: 78px; height: 19px">
                 <asp:ListItem Value="云南"></asp:ListItem>
                 <asp:ListItem></asp:ListItem>
                 <asp:ListItem></asp:ListItem>
                 <asp:ListItem></asp:ListItem>
                 <asp:ListItem></asp:ListItem>
                 <asp:ListItem></asp:ListItem>
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:myConStr %>" 
                 SelectCommand="SELECT DISTINCT [province] FROM [city]"></asp:SqlDataSource>
             <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
             </asp:DropDownList>
             </span></div>
         <div>
             <asp:Button ID="Button1" runat="server" Text="注册" onclick="Button1_Click" /><span></span>
             <asp:Button ID="Button2" runat="server" Text="登录" onclick="Button2_Click" />
       </div>
        
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="xm" HeaderText="xm" SortExpression="xm" />
            <asp:BoundField DataField="mm" HeaderText="mm" SortExpression="mm" />
            <asp:BoundField DataField="xb" HeaderText="xb" SortExpression="xb" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myConStr %>" 
        DeleteCommand="DELETE FROM [yhb] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [yhb] ([xm], [mm], [xb], [address]) VALUES (@xm, @mm, @xb, @address)" 
        SelectCommand="SELECT * FROM [yhb]" 
        UpdateCommand="UPDATE [yhb] SET [xm] = @xm, [mm] = @mm, [xb] = @xb, [address] = @address WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="xm" Type="String" />
            <asp:Parameter Name="mm" Type="String" />
            <asp:Parameter Name="xb" Type="String" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="xm" Type="String" />
            <asp:Parameter Name="mm" Type="String" />
            <asp:Parameter Name="xb" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
    <asp:ListView ID="ListView1" runat="server">
    </asp:ListView>

</body>
</html>
