<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-list.jsp</title>
</head>
<body>
<h1>ex04-list</h1>
<hr>
<%
	String[] arr = {"내일은 12월 12일", "서울의 봄", "500만 돌파"};
	pageContext.setAttribute("arr", arr);
%>
<p>${arr[0] }</p>
<p>${arr[1] }</p>
<p>${arr[2] }</p>

</body>
</html>