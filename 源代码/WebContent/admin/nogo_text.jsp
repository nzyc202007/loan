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
String id = request.getParameter("id");
ArrayList apply = array.getApplyOne(id);
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
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center"><textarea name="textarea" readonly cols="70" rows="10">
            <%
            if(adminlogin.get(3) != null && adminlogin.get(3).equals("学校")){
            	%><%=apply.get(35) %><%
            }
            else if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")){
            	%><%=apply.get(37) %><%
            }
             %>
            </textarea></td>
          </tr>
        </table>
        <br>
        </form>
        </td>
  </tr>
</table>
  </body>
  <jsp:include flush="true" page="/admin/bottom.jsp"/>
</html>
<%} %>
