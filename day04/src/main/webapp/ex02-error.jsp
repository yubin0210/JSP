<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-error.jsp</title>
</head>
<body>

<h1>ex02-error.jsp</h1>
<hr>

<%
	String msg = exception.getMessage();
%>
<h3><%=msg %></h3>
<h3>정수를 입력해주시기 바랍니다</h3>
<a href="ex02-form.jsp"><button>다시</button></a>

</body>
</html>