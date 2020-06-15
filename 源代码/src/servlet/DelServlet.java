package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AllBean;
import bean.InsertUpdateDelBean;

public class DelServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DelServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=gb2312");
		request.setCharacterEncoding("gb2312");
		
		String sql = "";
		String str = "";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		HttpSession session = request.getSession();
		ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
		AllBean ab = new AllBean();
		
		String adminid = request.getParameter("adminid");
		String userid = request.getParameter("userid");
		String apply = request.getParameter("apply");
		
		if(adminid != null && !adminid.equals("")){
			str = "/admin/adminlist.jsp";
			if(adminlogin.get(3) != null && adminlogin.get(3).equals("学校")){
				sql = "delete from admin_school where id="+adminid;
			}
			if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")){
				sql = "delete from admin_bank where id="+adminid;
			}
			
			if(adminid.equals("1")){
				request.setAttribute("message", "初始系统管理员不能删除！");
			}else{
				ib.insertANDupdateANDdel(sql);
				request.setAttribute("message", "操作成功！");
			}
		}
		
		if(userid != null && !userid.equals("")){
			str = "/admin/userlist.jsp";
			sql = "delete from users where id="+userid;
			ib.insertANDupdateANDdel(sql);
			sql = "delete from apply where userid="+userid;
			ib.insertANDupdateANDdel(sql);
			request.setAttribute("message", "操作成功！");
		}
		
		if(apply != null && !apply.equals("")){
			str = "/admin/verify.jsp";
			sql = "delete from apply where id="+apply;
			ib.insertANDupdateANDdel(sql);
			request.setAttribute("message", "操作成功！");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(str);
        rd.forward(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
