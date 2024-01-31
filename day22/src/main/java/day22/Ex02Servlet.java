package day22;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02Servlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Random ran = new Random();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int n1 = ran.nextInt(100) + 1;
		int n2 = ran.nextInt(100) + 1;
		String data = String.format("%d + %d = %d", n1, n2, n1 + n2);
		
		// 요청은 서블릿이 받았지만, 응답은 JSP가 한다
		// JSP로 넘겨주기 전에, 서블릿에서 생성한 데이터를 넘겨준다
		// JSP의 경로를 WEB-INF아래에 두면 단독실행이 불가능하지만 포워드는 가능하다
		
		req.setAttribute("data", data);
		req.getRequestDispatcher("/WEB-INF/views/ex02.jsp").forward(req, resp);
	}
}




