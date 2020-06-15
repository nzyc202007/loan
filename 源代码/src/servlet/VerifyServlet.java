package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.InsertUpdateDelBean;

public class VerifyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public VerifyServlet() {
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
		
		String id = request.getParameter("id");
		String verify = request.getParameter("verify");
		String nogo = request.getParameter("nogo");
		
		HttpSession session = request.getSession();
		ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		String sql = "";
		if(adminlogin.get(3) != null && adminlogin.get(3).equals("学校")){
			sql = "update apply set school='"+verify+"',nogo1='"+nogo+"' where id="+id;
		}
		if(adminlogin.get(3) != null && adminlogin.get(3).equals("银行")){
			sql = "update apply set bank='"+verify+"',nogo2='"+nogo+"' where id="+id;
		}
		ib.insertANDupdateANDdel(sql);
		request.setAttribute("message", "审核成功！");
		request.getRequestDispatcher("/admin/verify.jsp").forward(request, response);
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
