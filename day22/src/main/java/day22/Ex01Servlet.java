package day22;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 자바 서블릿 : 자바로 웹을 처리하기 위한 클래스
// 서블릿 클래스는 상속을 이용하여 구성할 수 있다

public class Ex01Servlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Random ran = new Random();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int n1 = ran.nextInt(100) + 1;
		int n2 = ran.nextInt(100) + 1;
		int answer = n1 + n2;
		String form = String.format("%d + %d = %d", n1, n2, answer);
		
		PrintWriter out = resp.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html lang=\"ko\">");
		out.print("<head>"
				+ "<meta charset=\"UTF-8\">"
				+ "<title>ex01servlet</title>"
				+ "</head>");
		out.print("<body>");
		
		out.print("<h1>두 랜덤 정수의 덧셈</h1>");
		out.print(form);
		
		out.print("</body>");
		out.print("</html>");
	}

}
