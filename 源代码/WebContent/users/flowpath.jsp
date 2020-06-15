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
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style type="text/css">
<!--
.ld {
	font-family: "黑体";
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
          &nbsp;&nbsp;第一步：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到网站注册一个用户，然后登录。<br><hr><br>
          &nbsp;&nbsp;第二步：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录后，填写申请单，提交申请单。<br><hr><br>
          &nbsp;&nbsp;第三步：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提交申请单后，学校会审核你的申请。<br><hr><br>
          &nbsp;&nbsp;第四步：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如学校审核通过后，学校会将申请单送到银行，在由银行进行审核。<br><hr><br>
          &nbsp;&nbsp;第五步：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;银行审核后，如通过，你就可以去银行领取助学贷款了。<br><hr><br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red">注：你可以随时登录网站，点击<span class="ss">审核结果</span>，就可以查看审核是否通过了</font><br><hr><br>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
<jsp:include flush="true" page="/users/bottom.jsp"/>
</html>
<%} %>
