<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
if(adminlogin == null || adminlogin.size() == 0){
	%><script>alert('����û�е�¼!');window.navigate('index.jsp');</script><%
}else{
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��̨����ϵͳ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/css.css">

  </head>
  
  <body>
  <table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="img/117367.jpg" width="800" height="100"/></td>
  </tr>
  <%
  if(adminlogin.get(3) != null && adminlogin.get(3).equals("ѧУ")){
   %>
  <tr><td class="tdmenu"><div id="menu">
  	<a href="admin/userlist.jsp">ע���û�����</a>
  	<a href="admin/verify.jsp">������</a>  	
  	<a href="admin/search.jsp">���뵥��ѯ</a>
  	<a href="admin/modifypwd.jsp">�޸�����</a>
  	<a href="admin/modifyname.jsp">�޸��û���</a>
  	<a href="admin/addadmin.jsp">���ϵͳ�û�</a>
  	<a href="admin/adminlist.jsp">ϵͳ�û�����</a>
  	<a href="RemoveServlet?mark=admin">ע���˳�</a></div></td>
  </tr>
  <%} %>
  <%
  if(adminlogin.get(3) != null && adminlogin.get(3).equals("����")){
   %>
  <tr><td class="tdmenu"><div id="menu">
  	<a href="admin/verify.jsp">������</a>
  	<a href="admin/search.jsp">���뵥��ѯ</a>
  	<a href="admin/modifypwd.jsp">�޸�����</a>
  	<a href="admin/modifyname.jsp">�޸��û���</a>
  	<a href="admin/addadmin.jsp">���ϵͳ�û�</a>
  	<a href="admin/adminlist.jsp">ϵͳ�û�����</a>
  	<a href="RemoveServlet?mark=admin">ע���˳�</a></div></td>
  </tr>
  <%} %>
</table>
  </body>
</html>
<%} %>
