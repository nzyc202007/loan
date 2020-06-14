<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=path %>/img/css.css">
<script type="text/javascript" src="<%=path %>/img/calendar.js"></script>
</head>
<script language="JavaScript">
function reg()
{
	var pattern = /^[a-zA-Z0-9_]+$/;
	var ints = /^[0-9_]+$/;
	var mail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	if (document.form2.name.value == "" ) 
	{
		alert("请输入用户名!");
		document.form2.name.focus();
		return false;
	}
	else if (document.form2.name.value.length < 3 )  
	{
		alert("用户名长度最少3个字符!");
		document.form2.name.focus();
		return false;
	}
	else if (!pattern.test(document.form2.name.value) )  
	{
		alert("用户名只能包含字母、数字!");
		document.form2.name.focus();
		return false;
	}
	else if (document.form2.pwd.value == "" ) 
	{
		alert("请输入密码!");
		document.form2.pwd.focus();
		return false;
	}
	else if (document.form2.pwd.value.length < 3 )  
	{
		alert("密码长度最少3个字符!");
		document.form2.pwd.focus();
		return false;
	}
	else if (!pattern.test(document.form2.pwd.value) )  
	{
		alert("密码只能包含字母、数字!");
		document.form2.pwd.focus();
		return false;
	}
	else if (document.form2.realname.value == "" ) 
	{
		alert("请输入真实姓名!");
		document.form2.realname.focus();
		return false;
	}
	else if (document.form2.birthday.value == "" ) 
	{
		alert("请输入出生日期!");
		document.form2.birthday.focus();
		return false;
	}
	else if (document.form2.phone.value == "" ) 
	{
		alert("请输入联系电话!");
		document.form2.phone.focus();
		return false;
	}
	else if (!ints.test(document.form2.phone.value) )  
	{
		alert("联系电话只能包含数字(格式为02412345678或13912345678)!");
		document.form2.phone.focus();
		return false;
	}
	else if (document.form2.address.value == "" ) 
	{
		alert("请输入联系地址!");
		document.form2.address.focus();
		return false;
	}
	else if (document.form2.email.value == "" ) 
	{
		alert("请输入邮箱地址!");
		document.form2.email.focus();
		return false;
	}
	else if (!mail.test(document.form2.email.value) )  
	{
		alert("邮箱地址格式错误(格式为123@163.com)!");
		document.form2.email.focus();
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
  <body>
    <table width="800" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="400" align="center" valign="top" class="border_left border_right border_bottom">
        <table width="50%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="5"></td>
  </tr>
</table>

        <form action="<%=path %>/RegServlet" method="post" name="form2" onSubmit="return reg()">
            <table width="50%" border="0" cellspacing="0" cellpadding="0" class="border">
              <tr>
                <td height="25" colspan="2" align="center" class="tabletd2">用户注册</td>
			  </tr>
              <tr>
                <td width="42%" height="25" align="right" class="tabletd1">用户名：</td>
                <td width="58%" height="25" class="tabletd1">&nbsp;<input type="text" name="name"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">密码：</td>
                <td height="25" class="tabletd2">&nbsp;<input type="password" name="pwd"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">真实姓名：</td>
                <td height="25" class="tabletd1">&nbsp;<input type="text" name="realname"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">性别：</td>
                <td height="25" class="tabletd2">&nbsp;<input name="sex" type="radio" value="男" checked>&nbsp;男&nbsp;&nbsp;
                <input type="radio" name="sex" value="女">&nbsp;女</td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">出生日期</td>
                <td height="25" class="tabletd1">&nbsp;<input name="birthday" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">联系电话：</td>
                <td height="25" class="tabletd2">&nbsp;<input type="text" name="phone"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">联系地址：</td>
                <td height="25" class="tabletd1">&nbsp;<input type="text" name="address"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">邮箱地址：</td>
                <td height="25" class="tabletd2">&nbsp;<input type="text" name="email"></td>
              </tr>
			  <tr>
            	<td height="25" colspan="2" align="center" class="tabletd1"><input type="submit" value="提交" class="input"></td>
			  </tr>
            </table>
        </form>
    </td>
  </tr>
</table>
  </body>
</html>
