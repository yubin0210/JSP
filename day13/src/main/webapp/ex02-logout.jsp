<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-logout.jsp</title>
</head>
<body>
<%
	// 쿠키와 달리, 세션은 유효시간을 0으로 설정하면 무한대가 된다
	// session.setMaxInactiveInterval(0);

	// 1) 세션에 저장된 특정 attribute를 제거한다
	session.removeAttribute("login");
	
	// 2) 세션을 강제로 만료시킨다 (다음 요청시 새로운 세션을 생성하게 된다)
	session.invalidate();
	
	// 3) 실행중인 브라우저의 모든 창과 모든 탭을 종료하면 세션이 만료된다
	
	// 처리가 끝나면 다시 원래 페이지로 이동시킨다
	response.sendRedirect("ex02-form.jsp");
%>

</body>
</html>