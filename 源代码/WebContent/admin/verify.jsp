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
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr class="tabletd1">
                <td height="25" colspan="6" align="center">申贷审核</td>
			  </tr>
              <tr class="tabletd2">
                <td height="25" align="center">序号</td>
                <td height="25" align="center">姓名</td>
                <td height="25" align="center">身份证号码</td>
                <td height="25" align="center">申请时间</td>
                <td height="25" align="center">&nbsp;</td>
                <td height="25" align="center">&nbsp;</td>
            </tr>
            <%
            ArrayList apply = array.getApply();
            if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")){
            	apply = array.getApplyBank();
            }
            for(int i = 0;i < apply.size();i++){
            	ArrayList alRow = (ArrayList)apply.get(i);
             %>
              <tr class="tabletd<%=i%2+1 %>">
                <td height="25" align="center"><%=i+1 %></td>
                <td height="25" align="center"><a title="点击查看此人申请单详情" href="admin/apply_show.jsp?id=<%=alRow.get(0) %>"><%=alRow.get(2) %></a></td>
                <td height="25" align="center"><%=alRow.get(5) %></td>
                <td height="25" align="center"><%=alRow.get(38).toString().substring(0,16) %></td>
                <td height="25" align="center">
                <%
                if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")?alRow.get(36).equals("0"):alRow.get(34).equals("0")){
                 %>
                <a href="admin/verify_text.jsp?id=<%=alRow.get(0) %>">审核</a>
                <%} %>
                <%
                if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")?alRow.get(36).equals("1"):alRow.get(34).equals("1")){
                 %>
                通过审核
                <%} %>
                <%
                if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")?alRow.get(36).equals("2"):alRow.get(34).equals("2")){
                 %>
                <a title="点击查看此人未通过审核的原因" href="admin/nogo_text.jsp?id=<%=alRow.get(0) %>">未通过审核</a>
                <%} %>
                </td>
                <td height="25" align="center"><a href="DelServlet?apply=<%=alRow.get(0) %>">删除</a></td>
              </tr>
              <%} %>
			</table>
         </form>
        </td>
  	 </tr>
	</table>
  </body>
  <jsp:include flush="true" page="/admin/bottom.jsp"/>
</html>
<%} %>
