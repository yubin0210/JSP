<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex06.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>

<h1>ex06 대문 페이지</h1>
<hr>

<%
	MemberDTO login = (MemberDTO) session.getAttribute("login");
	String welcome = String.format("안녕~ %s !!", login == null ? "친구" : login.getName());
%>
<div>
	<img src="<%=login == null ? "image/default.png" : login.getImgPath() %>" height="200">
	<h3><%=welcome %></h3>
</div>

<a href="ex06-form.jsp"><button>로그인</button></a>

</body>
</html>