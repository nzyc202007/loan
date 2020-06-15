package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.InsertUpdateDelBean;

public class ApplyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ApplyServlet() {
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
		
		HttpSession session = request.getSession();
		ArrayList userlogin = (ArrayList)session.getAttribute("userlogin");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String idcard = request.getParameter("idcard");
		String number = request.getParameter("number");
		String nationality = request.getParameter("nationality");
		String health = request.getParameter("health");
		String familyphone = request.getParameter("familyphone");
		String cellphone = request.getParameter("cellphone");
		String familyaddress = request.getParameter("familyaddress");
		String postalcode = request.getParameter("postalcode");
		String email = request.getParameter("email");
		String enrolment = request.getParameter("enrolment");
		String graduate = request.getParameter("graduate");
		String lengthschool = request.getParameter("lengthschool");
		String grade = request.getParameter("grade");
		String faculty = request.getParameter("faculty");
		String specialized = request.getParameter("specialized");
		String father = request.getParameter("father");
		String fatherid = request.getParameter("fatherid");
		String fatworkunit = request.getParameter("fatworkunit");
		String fatincome = request.getParameter("fatincome");
		String mother = request.getParameter("mother");
		String motherid = request.getParameter("motherid");
		String motworkunit = request.getParameter("motworkunit");
		String motincome = request.getParameter("motincome");
		String money = request.getParameter("money");
		String repayment = request.getParameter("repayment");
		String kind = request.getParameter("kind");
		String tuition = request.getParameter("tuition");
		String living = request.getParameter("living");
		String reason = request.getParameter("reason");
		
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		String sql = "insert into apply(userid,name,sex,birthday,idcard,number,nationality,health,familyphone,cellphone,familyaddress,postalcode,email,enrolment,graduate,lengthschool,grade,faculty,specialized,father,fatherid,fatworkunit,fatincome,mother,motherid,motworkunit,motincome,money,repayment,kind,tuition,living,reason) " +
				"values('"+userlogin.get(0)+"','"+name+"','"+sex+"','"+birthday+"','"+idcard+"','"+number+"','"+nationality+"','"+health+"','"+familyphone+"','"+cellphone+"','"+familyaddress+"','"+postalcode+"','"+email+"','"+enrolment+"','"+graduate+"','"+lengthschool+"','"+grade+"','"+faculty+"','"+specialized+"','"+father+"','"+fatherid+"','"+fatworkunit+"','"+fatincome+"','"+mother+"','"+motherid+"','"+motworkunit+"','"+motincome+"','"+money+"','"+repayment+"','"+kind+"','"+tuition+"','"+living+"','"+reason+"')";
		ib.insertANDupdateANDdel(sql);
		request.setAttribute("message", "申请单提交成功！");
		
		request.getRequestDispatcher("/users/apply.jsp").forward(request, response);
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
