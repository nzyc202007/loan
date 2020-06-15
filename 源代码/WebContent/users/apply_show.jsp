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
        <table width="70%" border="0" cellspacing="1" cellpadding="3" bgcolor="#333333">
          <tr class="ld">
            <td height="30" colspan="2" align="center">贷款申请表</td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">申请人姓名</td>
                  <td align="center"><%=apply.get(2) %></td>
                  <td align="center">性别</td>
                  <td align="center"><%=apply.get(3) %></td>
                  <td align="center">出生日期</td>
                  <td align="center"><%=apply.get(4) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">身份证号码</td>
                  <td><%=apply.get(5) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">学生证号码</td>
                  <td><%=apply.get(6) %></td>
                  <td align="center">民族</td>
                  <td><%=apply.get(7) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td rowspan="7" align="center">基<br>
              <br>
              本<br>
              <br>
              情<br>
              <br>
              况</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">健康状况</td>
                  <td><%=apply.get(8) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">家庭电话</td>
                  <td><%=apply.get(9) %></td>
                  <td align="center">移动电话</td>
                  <td><%=apply.get(10) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">家庭地址</td>
                  <td><%=apply.get(11) %></td>
                  <td align="center">邮政编码</td>
                  <td><%=apply.get(12) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">E-Mail地址</td>
                  <td><%=apply.get(13) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">入学时间</td>
                  <td><%=apply.get(14) %></td>
                  <td align="center">毕业时间</td>
                  <td><%=apply.get(15) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">学制</td>
                  <td><%=apply.get(16) %>年</td>
                  <td align="center">所在年/班级</td>
                  <td><%=apply.get(17) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">所在院系</td>
                  <td><%=apply.get(18) %></td>
                  <td align="center">所学专业</td>
                  <td><%=apply.get(19) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td rowspan="4" align="center">父<br>
              <br>
              母<br>
              <br>
              情<br>
              <br>
              况</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">父亲姓名</td>
                  <td><%=apply.get(20) %></td>
                  <td align="center">身份证号码</td>
                  <td><%=apply.get(21) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">工作单位</td>
                  <td><%=apply.get(22) %></td>
                  <td align="center">月收入</td>
                  <td><%=apply.get(23) %>元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">母亲姓名</td>
                  <td><%=apply.get(24) %></td>
                  <td align="center">身份证号码</td>
                  <td><%=apply.get(25) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">工作单位</td>
                  <td><%=apply.get(26) %></td>
                  <td align="center">月收入</td>
                  <td><%=apply.get(27) %>元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td rowspan="3" align="center">贷<br>
              款<br>
              情<br>
              况</td>
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">贷款金额</td>
                  <td><%=apply.get(28) %>元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">还款方式</td>
                  <td><%=apply.get(29) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">贷款种类</td>
                  <td><%=apply.get(30) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">学费和住宿费(按年)</td>
                  <td><%=apply.get(31) %>元</td>
                  <td align="center">生活费(按月)</td>
                  <td><%=apply.get(32) %>元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">贷款原因(理由)</td>
                  <td><textarea name="reason" cols="60" rows="7"readonly><%=apply.get(33) %></textarea></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td height="30" colspan="2"><p>&nbsp;贷款申请人声明：<br>
                &nbsp;&nbsp;&nbsp; 1、以上申请书及其所附资料所填内容为本人所填，且完全属实。本人承担因填写不实所引致的一切法律责任；<br>
                &nbsp;&nbsp;&nbsp; 2、本人承认以此申请书作为向贵行借款的依据。报送的资料复印件可留存贵行作备查凭证；<br>
                &nbsp;&nbsp;&nbsp; 3、经贵行审查不符合规定的借款条件而未予受理时，本人无异议；<br>
                &nbsp;&nbsp;&nbsp; 4、本人保证在取得银行贷款后，按时足额偿还贷款本息。<br>
                &nbsp;&nbsp;&nbsp; <font color="red">注：以上信息必须真实有效，一经填写不可更改</font>
                </p></td>
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
