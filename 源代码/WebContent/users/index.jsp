<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
    <%
    ArrayList userlogin = (ArrayList)session.getAttribute("userlogin");
    if(userlogin == null || userlogin.size() == 0){
    	request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
     %>
  </body>
</html>
