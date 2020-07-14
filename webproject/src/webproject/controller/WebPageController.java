package webproject.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webproject.action.LoginAction;
import webproject.dao.WebDAO;
import webproject.dto.AccountDTO;

@WebServlet("/login/*")
public class WebPageController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doProcess(req, resp);
			
	} // end doGet()

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doProcess(req, resp);

	} // end doPost()

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = req.getRequestURI();
		String next = "";
		
		path = path.substring(path.lastIndexOf("/") + 1);
		
		if (path.equals("*")) {
			path = "login.do";
		}
		
		if (path.equals("login.do")) {
			next = "/loginpageview/login.jsp";
		} else if (path.equals("main.do")) { // 로그인 버튼 누르면...
			LoginAction login = new LoginAction();
			login.execute(req);
			if (login.cnt == 0) {
				next = "/loginpageview/login.jsp";
			} else {
				next = "/mainpageview/mainpage.jsp";
			}
		} else if (path.equals("signup.do")) {
			
		}
		
		
		RequestDispatcher dis = req.getRequestDispatcher(next);
		dis.forward(req, resp);
		
	} // end doProcess()

} // end class
