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
<script language="JavaScript">
function check()
{
	var pattern = /^[a-zA-Z0-9_]+$/;
	var ints = /^[0-9_]+$/;
	var mail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	if (document.form2.name.value == "" ) 
	{
		alert("����������������!");
		document.form2.name.focus();
		return false;
	}
	else if (document.form2.birthday.value == "" ) 
	{
		alert("�������������!");
		document.form2.birthday.focus();
		return false;
	}
	else if (document.form2.idcard.value == "" ) 
	{
		alert("���������֤����!");
		document.form2.idcard.focus();
		return false;
	}
	else if (document.form2.idcard.value.length != 15 && document.form2.idcard.value.length != 18 ) 
	{
		alert("���֤���������15��18λ!");
		document.form2.idcard.focus();
		return false;
	}
	else if (document.form2.number.value == "" ) 
	{
		alert("������ѧ��֤����!");
		document.form2.number.focus();
		return false;
	}
	else if (document.form2.familyphone.value == "" ) 
	{
		alert("�������ͥ�绰!");
		document.form2.familyphone.focus();
		return false;
	}
	else if (!ints.test(document.form2.familyphone.value) )  
	{
		alert("��ͥ�绰ֻ�ܰ�������(��ʽΪ02412345678)!");
		document.form2.familyphone.focus();
		return false;
	}
	else if (document.form2.cellphone.value == "" ) 
	{
		alert("�������ƶ��绰!");
		document.form2.cellphone.focus();
		return false;
	}
	else if (!ints.test(document.form2.cellphone.value) )  
	{
		alert("�ƶ��绰ֻ�ܰ�������(��ʽΪ13912345678)!");
		document.form2.cellphone.focus();
		return false;
	}
	else if (document.form2.familyaddress.value == "" ) 
	{
		alert("�������ͥ��ַ!");
		document.form2.familyaddress.focus();
		return false;
	}
	else if (document.form2.postalcode.value == "" ) 
	{
		alert("��������������!");
		document.form2.postalcode.focus();
		return false;
	}
	else if (!ints.test(document.form2.postalcode.value) )  
	{
		alert("��������ֻ�ܰ�������!");
		document.form2.postalcode.focus();
		return false;
	}
	else if (document.form2.email.value == "" ) 
	{
		alert("������E-Mail��ַ!");
		document.form2.email.focus();
		return false;
	}
	else if (!mail.test(document.form2.email.value) )  
	{
		alert("E-Mail��ַ��ʽ����(��ʽΪ123@163.com)!");
		document.form2.email.focus();
		return false;
	}
	else if (document.form2.enrolment.value == "" ) 
	{
		alert("��������ѧʱ��!");
		document.form2.enrolment.focus();
		return false;
	}
	else if (document.form2.graduate.value == "" ) 
	{
		alert("�������ҵʱ��!");
		document.form2.graduate.focus();
		return false;
	}
	else if (document.form2.grade.value == "" ) 
	{
		alert("������������/�༶!");
		document.form2.grade.focus();
		return false;
	}
	else if (document.form2.faculty.value == "" ) 
	{
		alert("����������Ժϵ!");
		document.form2.faculty.focus();
		return false;
	}
	else if (document.form2.specialized.value == "" ) 
	{
		alert("��������ѧרҵ!");
		document.form2.specialized.focus();
		return false;
	}
	else if (document.form2.father.value == "" ) 
	{
		alert("�����븸������!");
		document.form2.father.focus();
		return false;
	}
	else if (document.form2.fatherid.value == "" ) 
	{
		alert("���������֤����!");
		document.form2.fatherid.focus();
		return false;
	}
	else if (document.form2.fatherid.value.length != 15 && document.form2.fatherid.value.length != 18 ) 
	{
		alert("���֤���������15��18λ!");
		document.form2.fatherid.focus();
		return false;
	}
	else if (document.form2.fatworkunit.value == "" ) 
	{
		alert("�����빤����λ!");
		document.form2.fatworkunit.focus();
		return false;
	}
	else if (document.form2.fatincome.value == "" ) 
	{
		alert("������������!");
		document.form2.fatincome.focus();
		return false;
	}
	else if (!ints.test(document.form2.fatincome.value) )  
	{
		alert("������ֻ�ܰ�������!");
		document.form2.fatincome.focus();
		return false;
	}
	else if (document.form2.mother.value == "" ) 
	{
		alert("������ĸ������!");
		document.form2.mother.focus();
		return false;
	}
	else if (document.form2.motherid.value == "" ) 
	{
		alert("���������֤����!");
		document.form2.motherid.focus();
		return false;
	}
	else if (document.form2.motherid.value.length != 15 && document.form2.motherid.value.length != 18 ) 
	{
		alert("���֤���������15��18λ!");
		document.form2.motherid.focus();
		return false;
	}
	else if (document.form2.motworkunit.value == "" ) 
	{
		alert("�����빤����λ!");
		document.form2.motworkunit.focus();
		return false;
	}
	else if (document.form2.motincome.value == "" ) 
	{
		alert("������������!");
		document.form2.motincome.focus();
		return false;
	}
	else if (!ints.test(document.form2.motincome.value) )  
	{
		alert("������ֻ�ܰ�������!");
		document.form2.motincome.focus();
		return false;
	}
	else if (document.form2.money.value == "" ) 
	{
		alert("�����������!");
		document.form2.money.focus();
		return false;
	}
	else if (!ints.test(document.form2.money.value) )  
	{
		alert("������ֻ�ܰ�������!");
		document.form2.money.focus();
		return false;
	}
	else if (document.form2.tuition.value == "" ) 
	{
		alert("������ѧ�Ѻ�ס�޷�!");
		document.form2.tuition.focus();
		return false;
	}
	else if (!ints.test(document.form2.tuition.value) )  
	{
		alert("ѧ�Ѻ�ס�޷�ֻ�ܰ�������!");
		document.form2.tuition.focus();
		return false;
	}
	else if (document.form2.living.value == "" ) 
	{
		alert("�����������!");
		document.form2.living.focus();
		return false;
	}
	else if (!ints.test(document.form2.living.value) )  
	{
		alert("�����ֻ�ܰ�������!");
		document.form2.living.focus();
		return false;
	}
	else if (document.form2.reason.value == "" ) 
	{
		alert("���������ԭ��(����)!");
		document.form2.reason.focus();
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
<table width="50%" border="0" cellspacing="0" cellpadding="0">        <tr>
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
                  <td align="center"><input name="name" type="text" /></td>
                  <td align="center">�Ա�</td>
                  <td align="center"><input name="sex" type="radio" value="��" checked />
                    &nbsp;��&nbsp;
                    <input name="sex" type="radio" value="Ů" />
                    &nbsp;Ů</td>
                  <td align="center">��������</td>
                  <td align="center"><input name="birthday" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">���֤����</td>
                  <td><input name="idcard" type="text" size="80" /></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ѧ��֤����</td>
                  <td><input name="number" type="text" size="57" /></td>
                  <td align="center">����</td>
                  <td><select name="nationality">
                      <option value="����">����</option>
                      <option value="�ɹ���">�ɹ���</option>
                      <option value="����">����</option>
                      <option value="����">����</option>
                      <option value="��������">��������</option>
                      <option value="���">���</option>
                      <option value="������">������</option>
                      <option value="������">������</option>
                      <option value="������">������</option>
                      <option value="ŭ��">ŭ��</option>
                      <option value="������">������</option>
                      <option value="���״���">���״���</option>
                      <option value="����">����</option>
                      <option value="׳��">׳��</option>
                      <option value="����">����</option>
                      <option value="����">����</option>
                      <option value="��ɽ��">��ɽ��</option>
                      <option value="������">������</option>
                      <option value="Ǽ��">Ǽ��</option>
                      <option value="������">������</option>
                      <option value="���α����">���α����</option>
                      <option value="ԣ����">ԣ����</option>
                      <option value="������">������</option>
                      <option value="����">����</option>
                      <option value="������">������</option>
                      <option value="����">����</option>
                      <option value="����">����</option>
                      <option value="������">������</option>
                      <option value="�¶�������">�¶�������</option>
                      <option value="������">������</option>
                      <option value="������">������</option>
                      <option value="����˹��">����˹��</option>
                      <option value="����">����</option>
                      <option value="�Ű���">�Ű���</option>
                      <option value="ά�����">ά�����</option>
                      <option value="������">������</option>
                      <option value="������">������</option>
                      <option value="������">������</option>
                      <option value="ˮ��">ˮ��</option>
                      <option value="����">����</option>
                      <option value="������">������</option>
                      <option value="������">������</option>
                      <option value="���¿���">���¿���</option>
                      <option value="��������">��������</option>
                      <option value="�����">�����</option>
                      <option value="����">����</option>
                      <option value="����">����</option>
                      <option value="������">������</option>
                      <option value="����">����</option>
                      <option value="������">������</option>
                      <option value="���Ӷ���">���Ӷ���</option>
                      <option value="ë����">ë����</option>
                      <option value="��������">��������</option>
                      <option value="�°���">�°���</option>
                      <option value="������">������</option>
                      <option value="��ŵ��">��ŵ��</option>
                    </select></td>
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
                  <td><input name="health" type="radio" value="����" checked />
                    &nbsp;����&nbsp;
                    <input name="health" type="radio" value="һ��" />
                    &nbsp;һ��&nbsp;
                    <input name="health" type="radio" value="��" />
                    &nbsp;��</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��ͥ�绰</td>
                  <td><input name="familyphone" type="text"></td>
                  <td align="center">�ƶ��绰</td>
                  <td><input name="cellphone" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��ͥ��ַ</td>
                  <td><input name="familyaddress" type="text"></td>
                  <td align="center">��������</td>
                  <td><input name="postalcode" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">E-Mail��ַ</td>
                  <td><input name="email" type="text" size="60"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��ѧʱ��</td>
                  <td><input name="enrolment" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
                  <td align="center">��ҵʱ��</td>
                  <td><input name="graduate" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ѧ��</td>
                  <td><select name="lengthschool">
                      <option value="1">һ��</option>
                      <option value="2">����</option>
                      <option value="3">����</option>
                      <option value="4">����</option>
                      <option value="5">����</option>
                    </select></td>
                  <td align="center">������/�༶</td>
                  <td><input name="grade" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">����Ժϵ</td>
                  <td><input name="faculty" type="text"></td>
                  <td align="center">��ѧרҵ</td>
                  <td><input name="specialized" type="text"></td>
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
                  <td><input name="father" type="text"></td>
                  <td align="center">���֤����</td>
                  <td><input name="fatherid" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">������λ</td>
                  <td><input name="fatworkunit" type="text"></td>
                  <td align="center">������</td>
                  <td><input name="fatincome" type="text">Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ĸ������</td>
                  <td><input name="mother" type="text"></td>
                  <td align="center">���֤����</td>
                  <td><input name="motherid" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">������λ</td>
                  <td><input name="motworkunit" type="text"></td>
                  <td align="center">������</td>
                  <td><input name="motincome" type="text">Ԫ</td>
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
                  <td><input name="money" type="text">
                    Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">���ʽ</td>
                  <td><input name="repayment" type="radio" value="�ȶϢ���" checked />
                    &nbsp;�ȶϢ���&nbsp;
                    <input name="repayment" type="radio" value="�ȶ�𻹿" />
                    &nbsp;�ȶ�𻹿</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">��������</td>
                  <td><input name="kind" type="radio" value="���������Ϣ������ѧ����" checked />
                    &nbsp;���������Ϣ������ѧ����&nbsp;
                    <input name="kind" type="radio" value="�ط�������Ϣ������ѧ����" />
                    &nbsp;�ط�������Ϣ������ѧ����</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">ѧ�Ѻ�ס�޷�(����)</td>
                  <td><input name="tuition" type="text">
                    Ԫ</td>
                  <td align="center">�����(����)</td>
                  <td><input name="living" type="text">
                    Ԫ</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">����ԭ��(����)</td>
                  <td><textarea name="reason" cols="60" rows="7"></textarea></td>
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
          <tr class="ld">
            <td height="30" colspan="2" align="center"><input type="submit" value="�ύ����"></td>
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
