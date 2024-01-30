<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add-form.jsp</title>
</head>
<body>

<h1>person 데이터 추가 입력받기</h1>
<hr>

<form action="add-action.jsp">
	<p><input type="text" name="name" placeholder="이름" required autofocus></p>
	<p><input type="number" name="age" placeholder="나이" required></p>
	<p>
		<input type="submit">
		<a href="list.jsp"><input type="button" value="목록"></a>
	</p>
</form>

</body>
</html>