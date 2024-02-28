package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 用户和管理员的退出登录的操作
 */
@WebServlet(value = {"/user/logout.do", "/admin/logout.do"})
public class LogoutServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * <p>
	 * This method is called when a form has its tag value method equals to get.
	 *
	 * @param request  the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException      if an error occurred
	 */
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * <p>
	 * This method is called when a form has its tag value method equals to post.
	 *
	 * @param request  the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException      if an error occurred
	 */
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");

		HttpSession session = request.getSession();
		if (op.equals("logout_user")) {
			session.setAttribute("user", null);
			//	request.getRequestDispatcher("index.jsp").forward(request, response);
			response.sendRedirect("index.jsp");
		} else if (op.equals("logout_admin")) {
			session.setAttribute("admin", null);
			//	request.getRequestDispatcher("index.jsp").forward(request, response);
			response.sendRedirect("login.jsp");
		}

	}

}
