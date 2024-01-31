package day22;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class Ex03Logout extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// GET/POST 메서드 구분없이 실행할 때는 service 함수를 사용한다
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();
		String cpath = req.getContextPath();
		resp.sendRedirect(cpath + "/ex03");
	}
	
}
