<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/>
<jsp:include flush="true" page="/admin/top.jsp"/>
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
    <td class="border_left border_right border_bottom" height="400" valign="top" align="center">        
<table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="5"></td>
          </tr>
        </table>
		<form name="form1" method="post" action="ModifyAdminServlet?mark=username" onSubmit="return check()">
		  <table width="98%" border="0" cellspacing="1" cellpadding="3">
            <tr>
              <td height="20" colspan="9" align="center">注册用户管理</td>
            </tr>
            <tr class="tabletd2">
              <td align="center">序号</td>
              <td align="center">用户名</td>
              <td align="center">真实姓名</td>
              <td align="center">性别</td>
              <td align="center">出生日期</td>
              <td align="center">联系电话</td>
              <td align="center">联系地址</td>
              <td align="center">邮箱地址</td>
              <td align="center">&nbsp;</td>
            </tr>
            <%
            ArrayList users = array.getUsers();
            for(int i = 0;i < users.size();i++){
            	ArrayList alRow = (ArrayList)users.get(i);
             %>
            <tr class="tabletd<%=i%2+1 %>">
              <td align="center"><%=i+1 %></td>
              <td align="center"><a href="admin/users.jsp?id=<%=alRow.get(0) %>"><%=alRow.get(1) %></a></td>
              <td align="center"><%=alRow.get(3) %></td>
              <td align="center"><%=alRow.get(4) %></td>
              <td align="center"><%=alRow.get(5) %></td>
              <td align="center"><%=alRow.get(6) %></td>
              <td align="center"><%=alRow.get(7) %></td>
              <td align="center"><%=alRow.get(8) %></td>
              <td align="center"><a href="DelServlet?userid=<%=alRow.get(0) %>">删除</a></td>
            </tr>
            <%} %>
            <tr>
              <td colspan="9" align="center" height="40"><font color="red">如删除此用户，那此用户所提交的所有申请单都将被删除</font></td>
            </tr>
          </table>
          </form>
        </td>
  </tr>
</table>
  </body>
  <jsp:include flush="true" page="/admin/bottom.jsp"/>
</html>
<%} %>
