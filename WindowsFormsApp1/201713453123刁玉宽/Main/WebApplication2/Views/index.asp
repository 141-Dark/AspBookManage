<style>
body {
background-color:#cccccc;
font-size:12px;
}
</style>
<%
'������www.aspprogram.cn
'���ߣ�wangsdong
'ԭ���ļ����뱣������Ϣ
'�������أ�http://www.jb51.net
addok=request("addok")
if addok="" or isnull(addok) then
%>
<table width="100%" border="0" cellspacing="1" cellpadding="0">
  <tr>
    <td height="25" colspan="2" align="center">�ļ��ϴ�</td>
  </tr>
  <form action="index.asp?addok=add" method="post" name="setup" id="setup">
  <tr>
    <td height="25" align="right">���⣺</td>
    <td height="25"><input name="title" type="text" id="title"></td>
  </tr>
  <tr>
    <td width="25%" height="25" align="right">�ļ���</td>
    <td width="75%" height="25"><input name='path' type='text' id='path' value='' size='40' maxlength='255'>
      <input type="button" value="�ϴ�..." onClick="window.open('upload.asp?fuptype=pic&fupname=<%=replace(replace(replace(now(),"-",""),":","")," ","")%>&frmname=setup&bdname=path','_blank','scrollbars=yes,resizable=no,width=650,height=450')"></td>
  </tr>
  <tr>
    <td height="25" align="right">&nbsp;</td>
    <td height="25"><input type="submit" value="��������"></td>
  </tr>
  </form>
  <!--
   ����������������������������������������������
   ��             �ű�֮��               ��
   �ǩ�������������������������������������������
   ��                                          ��
   ��           �ṩԴ�뷢��������             ��
   ��                                          ��
   ��        http://www.jb51.net           ��
   ��                                          ��
   ��            �������������              ��
   ����������������������������������������������
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

sql="select * from [��Ʒ�б�$]"
set rs=xlsconn.execute(sql)
if not rs.eof then
while not rs.eof
names=rs("��Ʒ��")
pic=rs("ͼƬ")

sql="insert into [product](namese,pic) values('"& names &"','"& pic &"')"
conn.execute(sql)

rs.movenext
wend

end if
response.write "����ɹ�"
end if
%>
<!--
   ����������������������������������������������
   ��             �ű�֮��               ��
   �ǩ�������������������������������������������
   ��                                          ��
   ��           �ṩԴ�뷢��������             ��
   ��                                          ��
   ��        http://www.jb51.net           ��
   ��                                          ��
   ��            �������������              ��
   ����������������������������������������������
-->
