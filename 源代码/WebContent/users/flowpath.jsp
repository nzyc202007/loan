<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/><jsp:include flush="true" page="/users/top.jsp"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList userlogin = (ArrayList)session.getAttribute("userlogin");
if(userlogin == null || userlogin.size() == 0){
	%>
<script>alert('����û�е�¼!');window.navigate('index.jsp');</script>
<%
}else{
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style type="text/css">
<!--
.ld {
	font-family: "����";
	font-size: 16px;
	color: #333;
}
.ss {
	font-weight: bold;
	font-style: italic;
}
-->
</style>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<body>
<table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="400" align="center" valign="top" class="border_left border_right border_bottom"><table width="50%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="5"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
          &nbsp;&nbsp;��һ����<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����վע��һ���û���Ȼ���¼��<br><hr><br>
          &nbsp;&nbsp;�ڶ�����<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��¼����д���뵥���ύ���뵥��<br><hr><br>
          &nbsp;&nbsp;��������<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ύ���뵥��ѧУ�����������롣<br><hr><br>
          &nbsp;&nbsp;���Ĳ���<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ѧУ���ͨ����ѧУ�Ὣ���뵥�͵����У��������н�����ˡ�<br><hr><br>
          &nbsp;&nbsp;���岽��<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������˺���ͨ������Ϳ���ȥ������ȡ��ѧ�����ˡ�<br><hr><br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">ע���������ʱ��¼��վ�����<span class="ss">��˽��</span>���Ϳ��Բ鿴����Ƿ�ͨ����</font><br><hr><br>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
<jsp:include flush="true" page="/users/bottom.jsp"/>
</html>
<%} %>
