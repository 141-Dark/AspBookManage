<style>
body {
background-color:#cccccc;
font-size:12px;
}
</style>
<%
'开发：www.aspprogram.cn
'作者：wangsdong
'原创文件，请保留此信息
'友情下载，http://www.jb51.net
addok=request("addok")
if addok="" or isnull(addok) then
%>
<table width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
    <td height="25" colspan="2" align="center">文件上传</td>
  </tr>
  <form action="index.asp?addok=add" method="post" name="setup" id="setup">
  <tr>
    <td height="25" align="right">标题：</td>
    <td height="25"><input name="title" type="text" id="title"></td>
  </tr>
  <tr>
    <td width="25%" height="25" align="right">文件：</td>
    <td width="75%" height="25"><input name='path' type='text' id='path' value='' size='40' maxlength='255'>
      <input type="button" value="上传..." onClick="window.open('upload.asp?fuptype=pic&fupname=<%=replace(replace(replace(now(),"-",""),":","")," ","")%>&frmname=setup&bdname=path','_blank','scrollbars=yes,resizable=no,width=650,height=450')"></td>
  </tr>
  <tr>
    <td height="25" align="right">&nbsp;</td>
    <td height="25"><input type="submit" value="导入数据"></td>
  </tr>
  </form>
  <!--
   ┏━━━━━━━━━━━━━━━━━━━━━┓
   ┃             脚本之家               ┃
   ┣━━━━━━━━━━━━━━━━━━━━━┫
   ┃                                          ┃
   ┃           提供源码发布与下载             ┃
   ┃                                          ┃
   ┃        http://www.jb51.net           ┃
   ┃                                          ┃
   ┃            互助、分享、提高              ┃
   ┗━━━━━━━━━━━━━━━━━━━━━┛
-->
</table>
<%
end if
if addok="add" then
%>
<!--#include file="jb51_net.conn.asp"-->
<%
Set xlsconn = server.CreateObject("adodb.connection") 
set rs=server.CreateObject("adodb.recordset")

source1=server.mappath("..")&"\"&replace(request("path"),"/","\")
myConn_Xsl="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &source1& ";Extended Properties=Excel 8.0"
xlsconn.open myConn_Xsl 

sql="select * from [商品列表$]"
set rs=xlsconn.execute(sql)
if not rs.eof then
while not rs.eof
names=rs("商品名")
pic=rs("图片")

sql="insert into [product](namese,pic) values('"& names &"','"& pic &"')"
conn.execute(sql)

rs.movenext
wend

end if
response.write "导入成功"
end if
%>
<!--
   ┏━━━━━━━━━━━━━━━━━━━━━┓
   ┃             脚本之家               ┃
   ┣━━━━━━━━━━━━━━━━━━━━━┫
   ┃                                          ┃
   ┃           提供源码发布与下载             ┃
   ┃                                          ┃
   ┃        http://www.jb51.net           ┃
   ┃                                          ┃
   ┃            互助、分享、提高              ┃
   ┗━━━━━━━━━━━━━━━━━━━━━┛
-->
