<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="memberDAO" value="${MemberDAO.getInstance() }" />
<c:set var="boardDAO" value="${BoardDAO.getInstance() }" />
<%	request.setCharacterEncoding("UTF-8"); %>
<%	response.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day15 - board</title>
</head>
<body>

<header>
	<h1><a href="${cpath }">day15 - board</a></h1>
	<div style="text-align: right; padding-right: 20px; height: 30px;">
		${login.userid }
	</div>
	<nav>
		<ul style="display: flex; list-style: none; justify-content: space-around;">
			<li><a href="${cpath }/login.jsp">로그인</a></li>
			<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
			<li><a href="${cpath }/join.jsp">회원가입</a></li>
			<li><a href="${cpath }/board.jsp">게시판</a></li>
		</ul>
	</nav>
</header>