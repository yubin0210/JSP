<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex02.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-form.jsp</title>
</head>
<body>

<h1>ex02-form.jsp</h1>
<hr>

<h3>form 작성이 끝나면, 데이터 이름과 형식에 맞는 DTO를 작성한다</h3>

<form method="POST" action="ex02-action.jsp" enctype="multipart/form-data">
	<p><input type="text" name="title" placeholder="제목"></p>
	<p><input type="file" name="image" accept="image/*"></p>
	<p><input type="date" name="eventDate"></p>
	<p><input type="submit"></p>
</form>

<style>
	#root {
		width: 900px;
		margin: 20px auto;
		display: flex;
		flex-flow: wrap;
	}
	.item {
		width: 200px;
		padding: 10px;
		margin: 10px;
		border: 1px solid grey;
		text-align: center;
		overflow: hidden;
	}
</style>

<c:set var="fileUtil" value="${FileUtil.getInstance() }" />
<c:set var="fileNames" value="${fileUtil.getFileNames() }" />

<div id="root">
	<c:forEach var="name" items="${fileNames }">
	<div class="item">
		<img src="upload/${name }" height="150px">
	</div>
	</c:forEach>
</div>

</body>
</html>



