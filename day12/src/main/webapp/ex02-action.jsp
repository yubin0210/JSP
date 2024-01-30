<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String theme = request.getParameter("theme");

	// theme의 값이 "white" 이면 유효시간을 0으로 설정한다
	// 쿠키의 유효시간을 0으로 설정하고, 쿠키를 보내면 소멸한다
	int maxAge = theme.equals("white") ? 0 : 120;

	// 쿠키를 생성하고, 유효시간을 설정한 다음, 클라이언트에게 보낸다
	Cookie cookie = new Cookie("theme", theme);
	cookie.setMaxAge(maxAge);
	response.addCookie(cookie);
	
	response.sendRedirect("ex02.jsp");
%>

</body>
</html>