<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/>
<jsp:include flush="true" page="/users/top.jsp"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList userlogin = (ArrayList)session.getAttribute("userlogin");
if(userlogin == null || userlogin.size() == 0){
	%><script>alert('����û�е�¼!');window.navigate('index.jsp');</script><%
}else{
	ArrayList user = array.getUsers(userlogin.get(0).toString());
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script language="JavaScript">
function reg()
{
	var pattern = /^[a-zA-Z0-9_]+$/;	
	if (document.form2.realname.value == "" ) 
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

        <form action="ModifyUserServlet?mark=usertext" method="post" name="form2" onSubmit="return reg()">
            <table width="50%" border="0" cellspacing="0" cellpadding="0" class="border">
              <tr>
                <td height="25" colspan="2" align="center" class="tabletd2">�޸�����</td>
			  </tr>
<tr>
            <td width="42%" height="25" align="right" class="tabletd1">��ʵ������</td>
            <td width="58%" height="25" class="tabletd1">&nbsp;<input type="text" name="realname" value="<%=user.get(3) %>"></td>
            </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">�Ա�</td>
                <td height="25" class="tabletd2">
                <%
                if(user.get(4).equals("��")){
                 %>
                &nbsp;<input name="sex" type="radio" value="��" checked>&nbsp;��&nbsp;&nbsp;<input type="radio" name="sex" value="Ů">&nbsp;Ů
                <%}else{ %>
                &nbsp;<input name="sex" type="radio" value="��">&nbsp;��&nbsp;&nbsp;<input type="radio" name="sex" value="Ů" checked>&nbsp;Ů
                <%} %>
                </td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">��������</td>
                <td height="25" class="tabletd1">&nbsp;<input value="<%=user.get(5) %>" name="birthday" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">��ϵ�绰��</td>
                <td height="25" class="tabletd2">&nbsp;<input type="text" name="phone" value="<%=user.get(6) %>"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">��ϵ��ַ��</td>
                <td height="25" class="tabletd1">&nbsp;<input type="text" name="address" value="<%=user.get(7) %>"></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">�����ַ��</td>
                <td height="25" class="tabletd2">&nbsp;<input value="<%=user.get(8) %>" type="text" name="email"></td>
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
  <jsp:include flush="true" page="/users/bottom.jsp"/>
</html>
<%} %>
