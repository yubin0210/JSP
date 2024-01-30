<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board2.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="memberDAO" value="${MemberDAO.getInstance() }" />
<c:set var="boardDAO" value="${BoardDAO.getInstance() }" />
<c:set var="fileUtil" value="${FileUtil.getInstance() }" />

<%	request.setCharacterEncoding("UTF-8"); %>
<%	response.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day19 - board</title>
<style>
	table#boardList {
		border-collapse: collapse;
		width: 900px;
		margin: 20px auto;
	}
	table#boardList > thead {
		background-color: black;
		color: white;
	}
	table#boardList > tbody > tr {
		border-bottom: 1px solid grey;
		transition-duration: 1s;
	}
	table#boardList > tbody > tr:hover {
		background-color: lightpink;
		transition-duration: 1s;
	}
	table#boardList td,
	table#boardList th {
		padding: 10px;
		text-align: center;
	}
	table#boardList > thead > tr > th:nth-child(1) {	width: 10%;	}
	table#boardList > thead > tr > th:nth-child(2) {	width: 50%;	}
	table#boardList > thead > tr > th:nth-child(3) {	width: 10%;	}
	table#boardList > thead > tr > th:nth-child(4) {	width: 10%;	}
	table#boardList > thead > tr > th:nth-child(5) {	width: 20%;	}
	
	table#boardList > tbody > tr > td:nth-child(2) { 	text-align: left; }
	
	.sb {
		width: 900px;
		margin: 20px auto;
		display: flex;
		justify-content: space-between;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	table#boardList a {
		display: inline-block;
		width: 90%;
	}
	table#boardList a:hover {
		text-decoration: none;
	}
	
	#boardView {
		width: 900px;
		margin: 20px auto;
		border: 1px solid black;
		border-collapse: collapse;
	}
	#boardView tbody > tr:nth-child(1) {
		font-size: 24px;
		font-weight: bold;
	}
	#boardView tbody > tr:last-child {
		text-align: right;
	}
	#boardView pre {
		min-height: 200px;
	}
	#boardView td {
		padding: 10px;
	}
	div#login {
		text-align: right;
		width: 900px;
		margin: 10px auto;
	}
	header, main {
		width: 900px;
		margin: auto;
	}
	.bold {
		font-weight: bold;
		color: red;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">게시판</a></h1>
	<div id="login">
		<c:if test="${empty login }">
			<form method="POST" action="login-action.jsp">
				<p>
					<input type="text" name="userid" placeholder="ID" required>
					<input type="password" name="userpw" placeholder="Password" required>
					<input type="submit" value="로그인">
					<a href="${cpath }/join.jsp"><input type="button" value="회원가입"></a>
				</p>
			</form>
		</c:if>
		<c:if test="${not empty login }">
			<p>
				<a href="${cpath }/mypage.jsp">${login.userid }</a> 
				( ${login.username } )
				<a href="${cpath }/logout.jsp"><button>로그아웃</button></a>
			</p>
		</c:if>
	</div>
</header>









