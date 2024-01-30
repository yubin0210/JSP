<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hello jsp</title>
</head>
<body>

<h1>Hello, JSP</h1>
<hr>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh시 mm분 ss초");
	String now = sdf.format(new Date());
	
	out.println("<h3>지금은 " + now + "입니다</h3>");
%>
<h3>지금은 <%=now %>입니다</h3>

</body>
</html>


