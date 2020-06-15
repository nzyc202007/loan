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
	ArrayList apply = array.getApply(userlogin.get(0).toString());
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
    <td height="400" align="center" valign="top" class="border_left border_right border_bottom"><table width="50%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="5"></td>
        </tr>
      </table>
      <form action="" method="post" name="form2" onSubmit="return reg()">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr class="tabletd1">
            <td height="25" colspan="4" align="center">审核结果</td>
          </tr>
          <tr class="tabletd2">
            <td height="25" align="center">序号</td>
            <td height="25" align="center">申请日期</td>
            <td height="25" align="center">学校审核</td>
            <td height="25" align="center">银行审核</td>
          </tr>
          <%
          if(apply != null && apply.size() != 0){
          for(int i = 0;i < apply.size();i++){
          	ArrayList alRow = (ArrayList)apply.get(i);
           %>
          <tr class="tabletd<%=i%2+1 %>">
            <td height="25" align="center"><a title="点击查看该申请单详情" href="users/apply_show.jsp?id=<%=alRow.get(0) %>"><%=i+1 %></a></td>
            <td height="25" align="center"><%=alRow.get(38).toString().substring(0,16) %></td>
            <td height="25" align="center">
            <%
            if(alRow.get(34).equals("0")){
            	%>审核中<%
            }
            else if(alRow.get(34).equals("1")){
            	%>通过审核<%
            }
            else if(alRow.get(34).equals("2")){
            	%><a title="点击查看未通过审核原因" href="users/nogo_show.jsp?mark=school&id=<%=alRow.get(0) %>">未通过审核</a><%
            }
            %>
            </td>
            <td height="25" align="center">
            <%
            if(alRow.get(34).equals("1")){
            if(alRow.get(36).equals("0")){
            	%>审核中<%
            }
            else if(alRow.get(36).equals("1")){
            	%>通过审核<%
            }
            else if(alRow.get(36).equals("2")){
            	%><a title="点击查看未通过审核原因" href="users/nogo_show.jsp?mark=bank&id=<%=alRow.get(0) %>">未通过审核</a><%
            }}
            %>
            </td>
          </tr>
          <%}}else{ %>
          <tr class="tabletd1">
            <td height="25" colspan="4" align="center">你还没有提交过申请单</td>
          </tr>
          <%} %>
        </table>
      </form></td>
  </tr>
</table>
</body>
<jsp:include flush="true" page="/users/bottom.jsp"/>
</html>
<%}%>
