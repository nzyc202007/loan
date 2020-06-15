<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/>
<jsp:include flush="true" page="/admin/top.jsp"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
if(adminlogin == null || adminlogin.size() == 0){
	%><script>alert('您还没有登录!');window.navigate('index.jsp');</script><%
}else{
	String id = request.getParameter("id");
	ArrayList user = array.getUsers(id);
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
        <td height="400" align="center" valign="top" class="border_left border_right border_bottom">
        <table width="50%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td height="5"></td>
		  </tr>
		</table>
        <form action="RegServlet" method="post" name="form2" onSubmit="return reg()">
            <table width="50%" border="0" cellspacing="0" cellpadding="0" class="border">
              <tr>
                <td height="25" colspan="2" align="center" class="tabletd2">用户资料</td>
			  </tr>
              <tr>
                <td width="42%" height="25" align="right" class="tabletd2">用户名：</td>
                <td width="58%" height="25" class="tabletd2">&nbsp;<%=user.get(1) %></td>
              </tr>
			  <tr>
                <td height="25" align="right" class="tabletd1">真实姓名：</td>
                <td height="25" class="tabletd1">&nbsp;<%=user.get(3) %></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">性别：</td>
                <td height="25" class="tabletd2">&nbsp;<%=user.get(4) %></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">出生日期：</td>
                <td height="25" class="tabletd1">&nbsp;<%=user.get(5) %></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">联系电话：</td>
                <td height="25" class="tabletd2">&nbsp;<%=user.get(6) %></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd1">联系地址：</td>
                <td height="25" class="tabletd1">&nbsp;<%=user.get(7) %></td>
              </tr>
              <tr>
                <td height="25" align="right" class="tabletd2">邮箱地址：</td>
                <td height="25" class="tabletd2">&nbsp;<%=user.get(8) %></td>
              </tr>
			</table>
        </form>
	    </td>
	  </tr>
	</table>
  </body>
  <jsp:include flush="true" page="/admin/bottom.jsp"/>
</html>
<%}%>