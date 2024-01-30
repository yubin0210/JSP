<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-header.jsp</title>
<style>
	h1 {
		text-align: center;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	ul {
		padding: 0;
		width: 500px;
		margin: auto;
		display: flex;
		justify-content: space-between;
		list-style: none;
	}
</style>
</head>
<body>
<%@ page import="java.util.ArrayList, java.util.Arrays" %>
<%
	String[] arr = { "C", "C++", "C#", "Python", "Java" };
	ArrayList<String> list = new ArrayList<>(Arrays.asList(arr));
	pageContext.setAttribute("arr", arr);
	pageContext.setAttribute("list", list);
%>

<h1><a href="ex03-index.jsp">ex03</a></h1>
<hr>
<div class="nav">
	<ul>
		<li><a href="ex03-login.jsp">로그인</a></li>
		<li><a href="ex03-join.jsp">회원가입</a></li>
	</ul>
</div>
