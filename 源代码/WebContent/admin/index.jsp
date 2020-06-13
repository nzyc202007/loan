<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统后台登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<style type="text/css">
<!--
.ld {
	font-family: "方正大标宋简体";
	font-size: 24px;
	border: #CCC solid 1px;
	background-color:#999;
}
.lk {
	font-size:9pt;
	border-bottom: #CCC solid 1px;
	border-left: #CCC solid 1px;
	background-color: #C7B994;
}
.lm {
	border-bottom: #CCC solid 1px;
	border-left: #CCC solid 1px;
	border-right: #CCC solid 1px;
	background-color: #C7B994;
}
.ln {
	border-bottom: #CCC solid 1px;
	border-left: #CCC solid 1px;
	border-right: #CCC solid 1px;
	background-color: #CAD9DF;
}
.input {	
	font-family: Arial, Helvetica, sans-serif;	
	font-size: 1em
	}
.submit {
	border:#039 solid 1px;
	background-color:#CCC;
	width: 50px;
	height: 25px;
	text-align: center;
	vertical-align: middle;
	padding-top:3px;
}
-->
</style>
<script language="JavaScript">
function login()
{	
	var pattern = /^[a-zA-Z0-9_]+$/;
	if (document.form1.name.value == "" ) 
	{
		alert("请输入用户名!");
		document.form1.name.focus();
		return false;
	}
	if (!pattern.test(document.form1.name.value) )  
	{
		alert("用户名只能包含字母、数字!");
		document.form1.name.focus();
		return false;
	}
	if (document.form1.pwd.value == ""  )  
	{
		alert("请输入密码!");
		document.form1.pwd.focus();
		return false;
	}
	if (!pattern.test(document.form1.pwd.value) )  
	{
		alert("密码只能包含字母、数字!");
		document.form1.pwd.focus();
		return false;
	}
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
  </head>
  
  <body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center" height="400" valign="middle">
      <form action="AdminLoginServlet" method="post" name="form1" onSubmit="return login()">
      <table width="50%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <th height="70" colspan="2" class="ld" scope="col">系统后台登录</th>
		  </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="lk">用户名:</th>
            <td width="60%" height="30" class="lm">&nbsp;<input class="input" type="text" name="name"></td>
          </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="lk">密&nbsp;&nbsp;码:</th>
            <td height="30" class="lm">&nbsp;<input class="input" type="password" name="pwd"></td>
          </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="lk">登录身份:</th>
            <td height="30" class="lm">&nbsp;<select name="status">
            <option value="学校">学校</option>
            <option value="银行">银行</option>
            </select></td>
          </tr>
          <tr>
            <th height="35" colspan="2" scope="row" class="ln"><input class="submit" type="submit" value="登录"></th>
		　</tr>
        </table>
      </form>
      </td>
    </tr>
  </table>
</body>
</html>
