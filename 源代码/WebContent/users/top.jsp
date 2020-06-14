<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在校大学生贷款系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="img/css.css">
	<script type="text/javascript" src="img/calendar.js"></script>

  </head>  
  
  <body>
  <table width="800" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="img/117367.jpg" width="800" height="100"/></td>
  </tr>
  <tr><td class="tdmenu"><div id="menu">
  	<a href="users/apply.jsp">填写贷款申请表</a>
  	<a href="users/flowpath.jsp">贷款流程</a>
  	<a href="users/verify.jsp">审核结果</a>
  	<a href="users/users.jsp">用户中心</a>
  	<a href="users/usertext.jsp">修改资料</a>
  	<a href="users/userpass.jsp">修改密码</a>
  	<a href="RemoveServlet?mark=user">注销退出</a>
  </tr>
</table>
</body>
</html>
