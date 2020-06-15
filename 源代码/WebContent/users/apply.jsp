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
		alert("请输入申请人姓名!");
		document.form2.name.focus();
		return false;
	}
	else if (document.form2.birthday.value == "" ) 
	{
		alert("请输入出生日期!");
		document.form2.birthday.focus();
		return false;
	}
	else if (document.form2.idcard.value == "" ) 
	{
		alert("请输入身份证号码!");
		document.form2.idcard.focus();
		return false;
	}
	else if (document.form2.idcard.value.length != 15 && document.form2.idcard.value.length != 18 ) 
	{
		alert("身份证号码必须是15或18位!");
		document.form2.idcard.focus();
		return false;
	}
	else if (document.form2.number.value == "" ) 
	{
		alert("请输入学生证号码!");
		document.form2.number.focus();
		return false;
	}
	else if (document.form2.familyphone.value == "" ) 
	{
		alert("请输入家庭电话!");
		document.form2.familyphone.focus();
		return false;
	}
	else if (!ints.test(document.form2.familyphone.value) )  
	{
		alert("家庭电话只能包含数字(格式为02412345678)!");
		document.form2.familyphone.focus();
		return false;
	}
	else if (document.form2.cellphone.value == "" ) 
	{
		alert("请输入移动电话!");
		document.form2.cellphone.focus();
		return false;
	}
	else if (!ints.test(document.form2.cellphone.value) )  
	{
		alert("移动电话只能包含数字(格式为13912345678)!");
		document.form2.cellphone.focus();
		return false;
	}
	else if (document.form2.familyaddress.value == "" ) 
	{
		alert("请输入家庭地址!");
		document.form2.familyaddress.focus();
		return false;
	}
	else if (document.form2.postalcode.value == "" ) 
	{
		alert("请输入邮政编码!");
		document.form2.postalcode.focus();
		return false;
	}
	else if (!ints.test(document.form2.postalcode.value) )  
	{
		alert("邮政编码只能包含数字!");
		document.form2.postalcode.focus();
		return false;
	}
	else if (document.form2.email.value == "" ) 
	{
		alert("请输入E-Mail地址!");
		document.form2.email.focus();
		return false;
	}
	else if (!mail.test(document.form2.email.value) )  
	{
		alert("E-Mail地址格式错误(格式为123@163.com)!");
		document.form2.email.focus();
		return false;
	}
	else if (document.form2.enrolment.value == "" ) 
	{
		alert("请输入入学时间!");
		document.form2.enrolment.focus();
		return false;
	}
	else if (document.form2.graduate.value == "" ) 
	{
		alert("请输入毕业时间!");
		document.form2.graduate.focus();
		return false;
	}
	else if (document.form2.grade.value == "" ) 
	{
		alert("请输入所在年/班级!");
		document.form2.grade.focus();
		return false;
	}
	else if (document.form2.faculty.value == "" ) 
	{
		alert("请输入所在院系!");
		document.form2.faculty.focus();
		return false;
	}
	else if (document.form2.specialized.value == "" ) 
	{
		alert("请输入所学专业!");
		document.form2.specialized.focus();
		return false;
	}
	else if (document.form2.father.value == "" ) 
	{
		alert("请输入父亲姓名!");
		document.form2.father.focus();
		return false;
	}
	else if (document.form2.fatherid.value == "" ) 
	{
		alert("请输入身份证号码!");
		document.form2.fatherid.focus();
		return false;
	}
	else if (document.form2.fatherid.value.length != 15 && document.form2.fatherid.value.length != 18 ) 
	{
		alert("身份证号码必须是15或18位!");
		document.form2.fatherid.focus();
		return false;
	}
	else if (document.form2.fatworkunit.value == "" ) 
	{
		alert("请输入工作单位!");
		document.form2.fatworkunit.focus();
		return false;
	}
	else if (document.form2.fatincome.value == "" ) 
	{
		alert("请输入月收入!");
		document.form2.fatincome.focus();
		return false;
	}
	else if (!ints.test(document.form2.fatincome.value) )  
	{
		alert("月收入只能包含数字!");
		document.form2.fatincome.focus();
		return false;
	}
	else if (document.form2.mother.value == "" ) 
	{
		alert("请输入母亲姓名!");
		document.form2.mother.focus();
		return false;
	}
	else if (document.form2.motherid.value == "" ) 
	{
		alert("请输入身份证号码!");
		document.form2.motherid.focus();
		return false;
	}
	else if (document.form2.motherid.value.length != 15 && document.form2.motherid.value.length != 18 ) 
	{
		alert("身份证号码必须是15或18位!");
		document.form2.motherid.focus();
		return false;
	}
	else if (document.form2.motworkunit.value == "" ) 
	{
		alert("请输入工作单位!");
		document.form2.motworkunit.focus();
		return false;
	}
	else if (document.form2.motincome.value == "" ) 
	{
		alert("请输入月收入!");
		document.form2.motincome.focus();
		return false;
	}
	else if (!ints.test(document.form2.motincome.value) )  
	{
		alert("月收入只能包含数字!");
		document.form2.motincome.focus();
		return false;
	}
	else if (document.form2.money.value == "" ) 
	{
		alert("请输入贷款金额!");
		document.form2.money.focus();
		return false;
	}
	else if (!ints.test(document.form2.money.value) )  
	{
		alert("贷款金额只能包含数字!");
		document.form2.money.focus();
		return false;
	}
	else if (document.form2.tuition.value == "" ) 
	{
		alert("请输入学费和住宿费!");
		document.form2.tuition.focus();
		return false;
	}
	else if (!ints.test(document.form2.tuition.value) )  
	{
		alert("学费和住宿费只能包含数字!");
		document.form2.tuition.focus();
		return false;
	}
	else if (document.form2.living.value == "" ) 
	{
		alert("请输入生活费!");
		document.form2.living.focus();
		return false;
	}
	else if (!ints.test(document.form2.living.value) )  
	{
		alert("生活费只能包含数字!");
		document.form2.living.focus();
		return false;
	}
	else if (document.form2.reason.value == "" ) 
	{
		alert("请输入贷款原因(理由)!");
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
            <td height="30" colspan="2" align="center">贷款申请表</td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">申请人姓名</td>
                  <td align="center"><input name="name" type="text" /></td>
                  <td align="center">性别</td>
                  <td align="center"><input name="sex" type="radio" value="男" checked />
                    &nbsp;男&nbsp;
                    <input name="sex" type="radio" value="女" />
                    &nbsp;女</td>
                  <td align="center">出生日期</td>
                  <td align="center"><input name="birthday" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">身份证号码</td>
                  <td><input name="idcard" type="text" size="80" /></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">学生证号码</td>
                  <td><input name="number" type="text" size="57" /></td>
                  <td align="center">民族</td>
                  <td><select name="nationality">
                      <option value="汉族">汉族</option>
                      <option value="蒙古族">蒙古族</option>
                      <option value="彝族">彝族</option>
                      <option value="侗族">侗族</option>
                      <option value="哈萨克族">哈萨克族</option>
                      <option value="畲族">畲族</option>
                      <option value="纳西族">纳西族</option>
                      <option value="仫佬族">仫佬族</option>
                      <option value="仡佬族">仡佬族</option>
                      <option value="怒族">怒族</option>
                      <option value="保安族">保安族</option>
                      <option value="鄂伦春族">鄂伦春族</option>
                      <option value="回族">回族</option>
                      <option value="壮族">壮族</option>
                      <option value="瑶族">瑶族</option>
                      <option value="傣族">傣族</option>
                      <option value="高山族">高山族</option>
                      <option value="景颇族">景颇族</option>
                      <option value="羌族">羌族</option>
                      <option value="锡伯族">锡伯族</option>
                      <option value="乌孜别克族">乌孜别克族</option>
                      <option value="裕固族">裕固族</option>
                      <option value="赫哲族">赫哲族</option>
                      <option value="藏族">藏族</option>
                      <option value="布依族">布依族</option>
                      <option value="白族">白族</option>
                      <option value="黎族">黎族</option>
                      <option value="拉祜族">拉祜族</option>
                      <option value="柯尔克孜族">柯尔克孜族</option>
                      <option value="布朗族">布朗族</option>
                      <option value="阿昌族">阿昌族</option>
                      <option value="俄罗斯族">俄罗斯族</option>
                      <option value="京族">京族</option>
                      <option value="门巴族">门巴族</option>
                      <option value="维吾尔族">维吾尔族</option>
                      <option value="朝鲜族">朝鲜族</option>
                      <option value="土家族">土家族</option>
                      <option value="傈僳族">傈僳族</option>
                      <option value="水族">水族</option>
                      <option value="土族">土族</option>
                      <option value="撒拉族">撒拉族</option>
                      <option value="普米族">普米族</option>
                      <option value="鄂温克族">鄂温克族</option>
                      <option value="塔塔尔族">塔塔尔族</option>
                      <option value="珞巴族">珞巴族</option>
                      <option value="苗族">苗族</option>
                      <option value="满族">满族</option>
                      <option value="哈尼族">哈尼族</option>
                      <option value="佤族">佤族</option>
                      <option value="东乡族">东乡族</option>
                      <option value="达斡尔族">达斡尔族</option>
                      <option value="毛南族">毛南族</option>
                      <option value="塔吉克族">塔吉克族</option>
                      <option value="德昂族">德昂族</option>
                      <option value="独龙族">独龙族</option>
                      <option value="基诺族">基诺族</option>
                    </select></td>
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
                  <td><input name="health" type="radio" value="良好" checked />
                    &nbsp;良好&nbsp;
                    <input name="health" type="radio" value="一般" />
                    &nbsp;一般&nbsp;
                    <input name="health" type="radio" value="差" />
                    &nbsp;差</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">家庭电话</td>
                  <td><input name="familyphone" type="text"></td>
                  <td align="center">移动电话</td>
                  <td><input name="cellphone" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">家庭地址</td>
                  <td><input name="familyaddress" type="text"></td>
                  <td align="center">邮政编码</td>
                  <td><input name="postalcode" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">E-Mail地址</td>
                  <td><input name="email" type="text" size="60"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">入学时间</td>
                  <td><input name="enrolment" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
                  <td align="center">毕业时间</td>
                  <td><input name="graduate" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd');"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">学制</td>
                  <td><select name="lengthschool">
                      <option value="1">一年</option>
                      <option value="2">二年</option>
                      <option value="3">三年</option>
                      <option value="4">四年</option>
                      <option value="5">五年</option>
                    </select></td>
                  <td align="center">所在年/班级</td>
                  <td><input name="grade" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">所在院系</td>
                  <td><input name="faculty" type="text"></td>
                  <td align="center">所学专业</td>
                  <td><input name="specialized" type="text"></td>
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
                  <td><input name="father" type="text"></td>
                  <td align="center">身份证号码</td>
                  <td><input name="fatherid" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">工作单位</td>
                  <td><input name="fatworkunit" type="text"></td>
                  <td align="center">月收入</td>
                  <td><input name="fatincome" type="text">元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">母亲姓名</td>
                  <td><input name="mother" type="text"></td>
                  <td align="center">身份证号码</td>
                  <td><input name="motherid" type="text"></td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">工作单位</td>
                  <td><input name="motworkunit" type="text"></td>
                  <td align="center">月收入</td>
                  <td><input name="motincome" type="text">元</td>
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
                  <td><input name="money" type="text">
                    元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">还款方式</td>
                  <td><input name="repayment" type="radio" value="等额本息还款法" checked />
                    &nbsp;等额本息还款法&nbsp;
                    <input name="repayment" type="radio" value="等额本金还款法" />
                    &nbsp;等额本金还款法</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">贷款种类</td>
                  <td><input name="kind" type="radio" value="中央财政贴息国家助学贷款" checked />
                    &nbsp;中央财政贴息国家助学贷款&nbsp;
                    <input name="kind" type="radio" value="地方财政贴息国家助学贷款" />
                    &nbsp;地方财政贴息国家助学贷款</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">学费和住宿费(按年)</td>
                  <td><input name="tuition" type="text">
                    元</td>
                  <td align="center">生活费(按月)</td>
                  <td><input name="living" type="text">
                    元</td>
                </tr>
              </table></td>
          </tr>
          <tr class="ld">
            <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center">贷款原因(理由)</td>
                  <td><textarea name="reason" cols="60" rows="7"></textarea></td>
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
          <tr class="ld">
            <td height="30" colspan="2" align="center"><input type="submit" value="提交申请"></td>
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
