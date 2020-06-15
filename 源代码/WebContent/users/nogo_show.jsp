<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/><jsp:include flush="true" page="/users/top.jsp"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList userlogin = (ArrayList)session.getAttribute("userlogin");
if(userlogin == null || userlogin.size() == 0){
	%>
<script>alert('您还没有登录!');window.navigate('index.jsp');</script>
<%
}else{
String id = request.getParameter("id");
String mark = request.getParameter("mark");
ArrayList apply = array.getApplyOne(id);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style type="text/css">
<!--
.ld {
	background:#D7EBF7;
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
      <form action="<%=path %>/ApplyServlet" method="post" name="form2" onSubmit="return check()">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="25" align="center">
            <%
            if(mark != null && mark.equals("school")){
            	%>学校审核未通过原因<%
            }
            else if(mark != null && mark.equals("bank")){
            	%>银行审核未通过原因<%
            }
             %>
            </td>
          </tr>
          <tr>
            <td align="center"><textarea name="textarea" readonly cols="70" rows="10">
            <%
            if(mark != null && mark.equals("school")){
            	%><%=apply.get(35) %><%
            }
            else if(mark != null && mark.equals("bank")){
            	%><%=apply.get(37) %><%
            }
             %>
            </textarea></td>
          </tr>
        </table>
        <br>
      </form></td>
  </tr>
</table>
</body>
<jsp:include flush="true" page="/users/bottom.jsp"/>
</html>
<%} %>
