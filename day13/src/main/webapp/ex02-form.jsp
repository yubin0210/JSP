<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>ex02-form</h1>
<hr>
<%
	String login = (String) session.getAttribute("login");

	if(login == null) {
%>
<form method="POST" action="ex02-action.jsp">
	<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
	<p><input type="password" name="userpw" placeholder="Password" required></p>
	<p><input type="submit" value="로그인"></p>
</form>
<%
	}
	else {
		long last = session.getLastAccessedTime() / 1000;
		long current = new java.util.Date().getTime() / 1000;
%>
<h3>현재 로그인 계정 : 				<%=login %></h3>
<h3>세션 최대 유효 시간 : 			<%=session.getMaxInactiveInterval() %></h3>
<h3>마지막으로 세션에 접근한 시간 : 	<%=last %></h3>
<h3>현재 시간 : 					<%=current %></h3>
<h3>현재시간 - 마지막접근시간 : 		<%=current - last %></h3>
<h3>현재 세션의 고유 ID : 			<%=session.getId() %></h3>
<h3>세션 최대 유효시간은 요청을 보낼때 마다 새로 갱신되어 연장된다</h3>

<a href="ex02-logout.jsp"><button>로그아웃</button></a>
<%	
	}
%>
</body>
</html>





