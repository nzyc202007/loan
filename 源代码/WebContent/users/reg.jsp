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
		alert("�������û���!");
		document.form2.name.focus();
		return false;
	}
	else if (document.form2.name.value.length < 3 )  
	{
		alert("�û�����������3���ַ�!");
		document.form2.name.focus();
		return false;
	}
	else if (!pattern.test(document.form2.name.value) )  
	{
		alert("�û���ֻ�ܰ�����ĸ������!");
		document.form2.name.focus();
		return false;
	}
	else if (document.form2.pwd.value == "" ) 
	{
		alert("����������!");
		document.form2.pwd.focus();
		return false;
	}
	else if (document.form2.pwd.value.length < 3 )  
	{
		alert("���볤������3���ַ�!");
		document.form2.pwd.focus();
		return false;
	}
	else if (!pattern.test(document.form2.pwd.value) )  
	{
		alert("����ֻ�ܰ�����ĸ������!");
		document.form2.pwd.focus();
		return false;
	}
	else if (document.form2.realname.value == "" ) 
	{
		alert("��������ʵ����!");
		document.form2.realname.focus();
		return false;
	}
	else if (document.form2.birthday.value == "" ) 
	{
		alert("�������������!");
		document.form2.birthday.focus();
		return false;
	}
	else if (document.form2.phone.value == "" ) 
	{
		alert("��������ϵ�绰!");
		document.form2.phone.focus();
		return false;
	}
	else if (!ints.test(document.form2.phone.value) )  
	{
		alert("��ϵ�绰ֻ�ܰ�������(��ʽΪ02412345678��13912345678)!");
		document.form2.phone.focus();
		return false;
	}
	else if (document.form2.address.value == "" ) 
	{
		alert("��������ϵ��ַ!");
		document.form2.address.focus();
		return false;
	}
	else if (document.form2.email.value == "" ) 
	{
		alert("�����������ַ!");
		document.form2.email.focus();
		return false;
	}
	else if (!mail.test(document.form2.email.value) )  
	{
		alert("�����ַ��ʽ����(��ʽΪ123@163.com)!");
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
                <td height="25" colspan="2" align="center" class="tabletd2">�û�ע��</td>
			  </tr>
              <tr>
                <td width="42%" height="25" align="right" class="tabletd1">�û�����</td>
                <td width="58%" height="25" class="tabletd1">&nbsp;<input type="text" name="name"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">���룺</td>
                <td height="25" class="tabletd2">&nbsp;<input type="password" name="pwd"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">��ʵ������</td>
                <td height="25" class="tabletd1">&nbsp;<input type="text" name="realname"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">�Ա�</td>
                <td height="25" class="tabletd2">&nbsp;<input name="sex" type="radio" value="��" checked>&nbsp;��&nbsp;&nbsp;
                <input type="radio" name="sex" value="Ů">&nbsp;Ů</td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">��������</td>
                <td height="25" class="tabletd1">&nbsp;<input name="birthday" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">��ϵ�绰��</td>
                <td height="25" class="tabletd2">&nbsp;<input type="text" name="phone"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">��ϵ��ַ��</td>
                <td height="25" class="tabletd1">&nbsp;<input type="text" name="address"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">�����ַ��</td>
                <td height="25" class="tabletd2">&nbsp;<input type="text" name="email"></td>
              </tr>
			  <tr>
            	<td height="25" colspan="2" align="center" class="tabletd1"><input type="submit" value="�ύ" class="input"></td>
			  </tr>
            </table>
        </form>
    </td>
  </tr>
</table>
  </body>
</html>
