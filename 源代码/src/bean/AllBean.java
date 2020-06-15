package bean;

import java.util.ArrayList;

public class AllBean {
	SelectBean sb = new SelectBean();
	ArrayList al = null;
	
	public ArrayList getUsers(){
		String sql = "select * from users order by id desc";
		String args[] = {"id","name","pwd","realname","sex","birthday","phone","address","email"};
		al = sb.select(sql, args);
		return al;
	}
	
	public ArrayList getUsers(String id){
		String sql = "select * from users where id="+id;
		String args[] = {"id","name","pwd","realname","sex","birthday","phone","address","email"};
		al = sb.select(args, sql);
		return al;
	}
	
	public ArrayList getApply(){
		String sql = "select * from apply order by id desc";
		String args[] = {"id","userid","name","sex","birthday","idcard","number","nationality","health","familyphone","cellphone","familyaddress","postalcode","email","enrolment","graduate","lengthschool","grade","faculty","specialized","father","fatherid","fatworkunit","fatincome","mother","motherid","motworkunit","motincome","money","repayment","kind","tuition","living","reason","school","nogo1","bank","nogo2","times"};
		al = sb.select(sql, args);
		return al;
	}
	
	public ArrayList getApplyBank(){
		String sql = "select * from apply where school='1' order by id desc";
		String args[] = {"id","userid","name","sex","birthday","idcard","number","nationality","health","familyphone","cellphone","familyaddress","postalcode","email","enrolment","graduate","lengthschool","grade","faculty","specialized","father","fatherid","fatworkunit","fatincome","mother","motherid","motworkunit","motincome","money","repayment","kind","tuition","living","reason","school","nogo1","bank","nogo2","times"};
		al = sb.select(sql, args);
		return al;
	}
	
	public ArrayList getApply(String userid){
		String sql = "select * from apply where userid="+userid+" order by id desc";
		String args[] = {"id","userid","name","sex","birthday","idcard","number","nationality","health","familyphone","cellphone","familyaddress","postalcode","email","enrolment","graduate","lengthschool","grade","faculty","specialized","father","fatherid","fatworkunit","fatincome","mother","motherid","motworkunit","motincome","money","repayment","kind","tuition","living","reason","school","nogo1","bank","nogo2","times"};
		al = sb.select(sql, args);
		return al;
	}
	
	public ArrayList getApplyOne(String id){
		String sql = "select * from apply where id="+id;
		String args[] = {"id","userid","name","sex","birthday","idcard","number","nationality","health","familyphone","cellphone","familyaddress","postalcode","email","enrolment","graduate","lengthschool","grade","faculty","specialized","father","fatherid","fatworkunit","fatincome","mother","motherid","motworkunit","motincome","money","repayment","kind","tuition","living","reason","school","nogo1","bank","nogo2","times"};
		al = sb.select(args, sql);
		return al;
	}
	
	public ArrayList getApplySearch(String idcard){
		String sql = "select * from apply where idcard='"+idcard+"' order by id desc";
		String args[] = {"id","userid","name","sex","birthday","idcard","number","nationality","health","familyphone","cellphone","familyaddress","postalcode","email","enrolment","graduate","lengthschool","grade","faculty","specialized","father","fatherid","fatworkunit","fatincome","mother","motherid","motworkunit","motincome","money","repayment","kind","tuition","living","reason","school","nogo1","bank","nogo2","times"};
		al = sb.select(sql, args);
		return al;
	}
	
	public ArrayList getApplyBankSearch(String idcard){
		String sql = "select * from apply where school='1' and idcard='"+idcard+"' order by id desc";
		String args[] = {"id","userid","name","sex","birthday","idcard","number","nationality","health","familyphone","cellphone","familyaddress","postalcode","email","enrolment","graduate","lengthschool","grade","faculty","specialized","father","fatherid","fatworkunit","fatincome","mother","motherid","motworkunit","motincome","money","repayment","kind","tuition","living","reason","school","nogo1","bank","nogo2","times"};
		al = sb.select(sql, args);
		return al;
	}
}
