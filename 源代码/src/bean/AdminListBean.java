package bean;

import java.util.ArrayList;

public class AdminListBean {
	SelectBean sb = new SelectBean();
	
	public ArrayList getAdminSchool(){
		String sql = "select * from admin_school order by id desc";
		String args[] = {"id","name","pwd","status"};
		ArrayList al = sb.select(sql, args);
		return al;
	}
	
	public ArrayList getAdminBank(){
		String sql = "select * from admin_bank order by id desc";
		String args[] = {"id","name","pwd","status"};
		ArrayList al = sb.select(sql, args);
		return al;
	}
}
