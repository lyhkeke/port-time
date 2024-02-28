package controller;

import entity.ReleaseOrders;
import service.ReleaseOrdersService;
import service.impl.ReleaseOrdersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 获取招聘信息详情的操作
 */
@WebServlet("/user/odetail.do")
public class OrderDetailServlet extends HttpServlet {

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

		ReleaseOrdersService releaseOrdersService = new ReleaseOrdersServiceImpl();
		String oid = request.getParameter("orderId");
		ReleaseOrders releaseOrders = releaseOrdersService.findById(Integer.parseInt(oid));
		request.setAttribute("rOrder", releaseOrders);


		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		request.setAttribute("rOrder", releaseOrders);
		request.getRequestDispatcher("order-detail.jsp").forward(request, response);

	}

}
