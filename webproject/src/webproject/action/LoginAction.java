package webproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webproject.dao.WebDAO;
import webproject.dto.AccountDTO;

public class LoginAction implements WebActionImp{

	public int cnt = 0;
	
	@Override
	public void execute(HttpServletRequest req) {
		
		WebDAO dao = WebDAO.getInstance();
		
		// 변수 지정/가져오기
		String fid = req.getParameter("fid");
		String fpass = req.getParameter("fpass");
		
		// 변수 dto에 저장
		AccountDTO dto = new AccountDTO();
		dto.setAccount_Id(fid);
		dto.setAccount_Password(fpass);
		
		// 로그인 체크 확인
		cnt = dao.loginCheck(dto);

		HttpSession session = null;
		
		if (cnt == 1) {
			
			// 아이디 확인 후 아이디 관련된 정보를 모두 가져옴.
			dao.viewMethod(fid);
			AccountDTO pdto = new AccountDTO();
			
			// sessionScope에 개인정보 (id, password, etc.) 넘겨준다.
			session = req.getSession();
			session.setMaxInactiveInterval(30 * 60);
			session.setAttribute("account_id", fid);
			session.setAttribute("account_password", fpass);
			session.setAttribute("account_num", pdto.getAccount_Num());
			session.setAttribute("account_name", pdto.getAccount_Name());
			session.setAttribute("account_about", pdto.getAccount_About());
			session.setAttribute("account_email", pdto.getAccount_Email());
			session.setAttribute("account_img", pdto.getAccount_Img());
			session.setAttribute("account_phone_num", pdto.getAccount_Phon_Num());
			session.setAttribute("account_flag", pdto.getAccount_Flag());
			
		} else {
			req.setAttribute("id", fid);
		}
	} // end execute()

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
	} // end execute()

} // end class
