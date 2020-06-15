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
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script language="JavaScript">
function check()
{
	var pattern = /^[a-zA-Z0-9_]+$/;
	if (document.form1.verify.value == "" ) 
	{
		alert("请选择审核结果!");
		document.form1.verify.focus();
		return false;
	}
	if (document.form1.verify.value == "2"  )  
	{
		if (document.form1.nogo.value == "" || document.form1.nogo.value == "请输入未通过的原因")  
		{
			alert("请输入未通过的原因!");
			document.form1.nogo.focus();
			return false;
		}
	}
}
function nogo11()
{
	if(form1.verify.value == "2")
	{
		form1.nogo.disabled = false;
	}
	else
	{
		form1.nogo.disabled = true;
	}
}
function focus11()
{
	form1.nogo.value = "";
	document.form1.nogo.focus();
}
</script>
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
		<form name="form1" method="post" action="VerifyServlet?id=<%=id %>" onSubmit="return check()">
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" align="center"><select name="verify" onChange="nogo11()">
              <option value="">--请选择审核结果--</option>
              <option value="1">通过</option>
              <option value="2">未通过</option>
              </select></td>
            </tr>
            <tr>
              <td align="center"><textarea name="nogo" cols="60" rows="10" disabled onFocus="focus11()">请输入未通过的原因</textarea></td>
            </tr>
            <tr>
              <td height="30" align="center"><input type="submit" value="提交"></td>
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
