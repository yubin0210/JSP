<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-show.jsp</title>
</head>
<body>

<h1>리다이렉트 결과</h1>
<hr>

<p><img src="image/<%=request.getParameter("name") %>.png" height="300"></p>

<a href="ex05.jsp"><button>돌아가기</button></a>

</body>
</html>