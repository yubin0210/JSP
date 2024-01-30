<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="phonebook.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="cpath" value="${pageContext.request.contextPath }" />
<jsp:useBean id="dao" class="phonebook.PhoneBookDAO" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::: PHONEBOOK :::</title>
</head>
<body>

<h1><a href="${cpath }">PHONEBOOK</a></h1>
<div>
	<ul>
		<li><a href="list.jsp">목록</a></li>
		<li><a href="add.jsp">추가</a></li>
	</ul>
</div>
<hr>


