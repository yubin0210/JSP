package day22;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board2.BoardDAO;
import board2.Paging;

@WebServlet("/board")
public class BoardServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private final String prefix = "/WEB-INF/views/";
	private final String suffix = ".jsp";
	
	// 데이터 준비 및 로직에 필요한 자바 객체는 미리 생성해두면 된다
	private BoardDAO boardDAO = BoardDAO.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String search = req.getParameter("search");
		if(search == null) {
			search = "";
		}
		int count = boardDAO.selectCount(search);
		String paramPage = req.getParameter("page");
		int page = Integer.parseInt(paramPage == null ? "1" : paramPage);
		Paging paging = Paging.newInstance(page, count);
		
		req.setAttribute("list", boardDAO.selectList(search, paging));
		req.setAttribute("paging", paging);
		
		req.getRequestDispatcher(prefix + "board" + suffix).forward(req, resp);
	}
}
