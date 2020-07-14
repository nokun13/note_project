package mainpage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/main")
public class MainPageController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dis = req.getRequestDispatcher("/mainpageview/main.jsp");
		dis.forward(req, resp);
		
		System.out.println("asd");
	} // end doGet()

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doProcess(req, resp);

	} // end doPost()

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
		String next = "";

		HttpSession session = req.getSession();
		if (session.getAttribute("logOK") == null) {
			resp.sendRedirect("../login?loginfail=" + path);
			

			return;
		}
		path = path.substring(path.lastIndexOf("/") + 1);
		if (path.equals("*")) {
			path = "list.do";
		}
		if (path.equals("")) {
		} else if (path.equals("")) {
		} else if (path.equals("")) {
		} else if (path.equals("")) {
		} else if (path.equals("")) {
		} else if (path.equals("")) {
		}

		if (next != "") {
			RequestDispatcher dis = req.getRequestDispatcher(next);
			dis.forward(req, resp);
		}

	} // end doProcess()

} // end class
