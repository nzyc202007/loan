<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="array" scope="page" class="bean.AllBean"/><jsp:include flush="true" page="/users/top.jsp"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList userlogin = (ArrayList)session.getAttribute("userlogin");
if(userlogin == null || userlogin.size() == 0){
	%>
<script>alert('����û�е�¼!');window.navigate('index.jsp');</script>
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
            <td height="30" colspan="2" align="center">���������</td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">����������</td>
                  <td align="center"><%=apply.get(2) %></td>
                  <td align="center">�Ա�</td>
                  <td align="center"><%=apply.get(3) %></td>
                  <td align="center">��������</td>
                  <td align="center"><%=apply.get(4) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">���֤����</td>
                  <td><%=apply.get(5) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ѧ��֤����</td>
                  <td><%=apply.get(6) %></td>
                  <td align="center">����</td>
                  <td><%=apply.get(7) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td rowspan="7" align="center">��<br>
              <br>
              ��<br>
              <br>
              ��<br>
              <br>
              ��</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">����״��</td>
                  <td><%=apply.get(8) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��ͥ�绰</td>
                  <td><%=apply.get(9) %></td>
                  <td align="center">�ƶ��绰</td>
                  <td><%=apply.get(10) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��ͥ��ַ</td>
                  <td><%=apply.get(11) %></td>
                  <td align="center">��������</td>
                  <td><%=apply.get(12) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">E-Mail��ַ</td>
                  <td><%=apply.get(13) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��ѧʱ��</td>
                  <td><%=apply.get(14) %></td>
                  <td align="center">��ҵʱ��</td>
                  <td><%=apply.get(15) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ѧ��</td>
                  <td><%=apply.get(16) %>��</td>
                  <td align="center">������/�༶</td>
                  <td><%=apply.get(17) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">����Ժϵ</td>
                  <td><%=apply.get(18) %></td>
                  <td align="center">��ѧרҵ</td>
                  <td><%=apply.get(19) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td rowspan="4" align="center">��<br>
              <br>
              ĸ<br>
              <br>
              ��<br>
              <br>
              ��</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��������</td>
                  <td><%=apply.get(20) %></td>
                  <td align="center">���֤����</td>
                  <td><%=apply.get(21) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">������λ</td>
                  <td><%=apply.get(22) %></td>
                  <td align="center">������</td>
                  <td><%=apply.get(23) %>Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ĸ������</td>
                  <td><%=apply.get(24) %></td>
                  <td align="center">���֤����</td>
                  <td><%=apply.get(25) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">������λ</td>
                  <td><%=apply.get(26) %></td>
                  <td align="center">������</td>
                  <td><%=apply.get(27) %>Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td rowspan="3" align="center">��<br>
              ��<br>
              ��<br>
              ��</td>
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">������</td>
                  <td><%=apply.get(28) %>Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">���ʽ</td>
                  <td><%=apply.get(29) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��������</td>
                  <td><%=apply.get(30) %></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ѧ�Ѻ�ס�޷�(����)</td>
                  <td><%=apply.get(31) %>Ԫ</td>
                  <td align="center">�����(����)</td>
                  <td><%=apply.get(32) %>Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">����ԭ��(����)</td>
                  <td><textarea name="reason" cols="60" rows="7"readonly><%=apply.get(33) %></textarea></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td height="30" colspan="2"><p>&nbsp;����������������<br>
                &nbsp;&nbsp;&nbsp; 1�����������鼰������������������Ϊ�����������ȫ��ʵ�����˳е�����д��ʵ�����µ�һ�з������Σ�<br>
                &nbsp;&nbsp;&nbsp; 2�����˳����Դ���������Ϊ����н������ݡ����͵����ϸ�ӡ�����������������ƾ֤��<br>
                &nbsp;&nbsp;&nbsp; 3����������鲻���Ϲ涨�Ľ��������δ������ʱ�����������飻<br>
                &nbsp;&nbsp;&nbsp; 4�����˱�֤��ȡ�����д���󣬰�ʱ�������Ϣ��<br>
                &nbsp;&nbsp;&nbsp; <font color="red">ע��������Ϣ������ʵ��Ч��һ����д���ɸ���</font>
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
