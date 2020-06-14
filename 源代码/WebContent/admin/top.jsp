<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
if(adminlogin == null || adminlogin.size() == 0){
	%><script>alert('您还没有登录!');window.navigate('index.jsp');</script><%
}else{
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理系统</title>
    
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
  if(adminlogin.get(3) != null && adminlogin.get(3).equals("学校")){
   %>
  <tr><td class="tdmenu"><div id="menu">
  	<a href="admin/userlist.jsp">注册用户管理</a>
  	<a href="admin/verify.jsp">申贷审核</a>  	
  	<a href="admin/search.jsp">申请单查询</a>
  	<a href="admin/modifypwd.jsp">修改密码</a>
  	<a href="admin/modifyname.jsp">修改用户名</a>
  	<a href="admin/addadmin.jsp">添加系统用户</a>
  	<a href="admin/adminlist.jsp">系统用户管理</a>
  	<a href="RemoveServlet?mark=admin">注销退出</a></div></td>
  </tr>
  <%} %>
  <%
  if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")){
   %>
  <tr><td class="tdmenu"><div id="menu">
  	<a href="admin/verify.jsp">申贷审核</a>
  	<a href="admin/search.jsp">申请单查询</a>
  	<a href="admin/modifypwd.jsp">修改密码</a>
  	<a href="admin/modifyname.jsp">修改用户名</a>
  	<a href="admin/addadmin.jsp">添加系统用户</a>
  	<a href="admin/adminlist.jsp">系统用户管理</a>
  	<a href="RemoveServlet?mark=admin">注销退出</a></div></td>
  </tr>
  <%} %>
</table>
  </body>
</html>
<%} %>
