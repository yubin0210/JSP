<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>

<h1>도서 추가</h1>
<hr>

<form action="add-action.jsp">
	<p><input type="text" name="title" placeholder="제목" required autofocus></p>
	<p><input type="text" name="author" placeholder="저자" required></p>
	<p><input type="text" name="publisher" placeholder="출판사" required></p>
	<p><input type="date" name="publishDate" required> (출판일자)</p>
	<p><input type="submit"></p>
</form>

</body>
</html>