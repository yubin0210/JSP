<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>

<h1>JSP 기본문법 활용 + JDBC</h1>
<hr>

<%@ page import="ex03.Ex03DAO" %>

<%!
	private Ex03DAO dao = new Ex03DAO();
%>

<%
	String dbVersion = dao.getDBversion();
%>

<h3>DB version : <%=dbVersion %></h3>

</body>
</html>