<%@page import="ex06.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07-action.jsp</title>
</head>
<body>

<%
	String name = request.getParameter("name");

	if(name == null) {
		// 이름이 전달되지 않았으면 입력 페이지로 리다이렉트 (넘길 값이 없다)
		response.sendRedirect("ex07.jsp");
	}
	else {
		// 이름이 전달되었으면, 객체를 생성하고 request에 객체를 담아둔다
		MemberDTO dto = new MemberDTO();
		dto.setName(name);
		request.setAttribute("dto", dto);
		
		// forward하면서 request도 함께 전달되기 때문에
		// action에서 넣은 dto를 show에서 사용할 수 있다
		// 단, session과는 달리 action을 반드시 거쳐서 show로 가야 정상작동한다
		// (show를 바로 실행하면 아무 그림도 출력되지 않는다)
		RequestDispatcher rd = null;
		rd = request.getRequestDispatcher("ex07-show.jsp");
		rd.forward(request, response);
	}
%>

</body>
</html>







