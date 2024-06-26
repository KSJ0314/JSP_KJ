package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberDTO;

public class loginCheck extends HttpServlet {
	
	MemberDAO dao;
	
	@Override
	public void init() throws ServletException {
		dao = new MemberDAO();
	}

	@Override
	public void destroy() {
		dao.close();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDTO dto = dao.getDTO(id, pw);
		if (dto.getId() != null){
			session.setAttribute("UserId", dto.getId());
			session.setAttribute("UserPw", dto.getPw());
			session.setAttribute("UserName", dto.getName());
			session.setAttribute("UserPhone", dto.getPhone());
			session.setAttribute("UserAddress", dto.getAddress());
		} else {
			request.setAttribute("ErrorMessage", "아이디나 비밀번호가 일치하지 않습니다.");
		}
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
