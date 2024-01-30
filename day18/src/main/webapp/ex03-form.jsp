<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex03.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-form.jsp</title>
<style>
	textarea {
		resize: none;
		width: 500px;
		height: 100px;
		padding: 5px;
	}
	#root {
		width: 800px;
		margin: auto;
		border: 2px solid black;
		padding: 10px;
	}
	.item {
		padding: 5px;
		display: flex;
	}
	.item > div:nth-child(1) {	flex: 1; }
	.item > div:nth-child(2) {	flex: 5; }
	.item > div:nth-child(3) {	flex: 2; }
</style>
</head>
<body>

<h1>ex03-form.jsp - DB 연동 파일 업로드</h1>
<hr>

<form method="POST" action="ex03-action.jsp" enctype="multipart/form-data">
	<p><input type="file" name="image" accept="image/*" required></p>
	<p><input type="text" name="storeName" placeholder="식당이름" required></p>
	<p><textarea name="content" placeholder="간단 리뷰 내용" required></textarea></p>
	<p><label>방문날짜 <input type="date" name="visitDate"></label></p>
	<p><input type="submit"></p>
</form>

<div id="root">
	<c:set var="reviewDAO" value="${ReviewDAO.getInstance() }" />
	<c:set var="list" value="${reviewDAO.selectList() }" />
	<c:forEach var="dto" items="${list }">
	<div class="item">
		<div>${dto.idx }</div>
		<div><a href="${cpath }/ex03-view.jsp?idx=${dto.idx}">${dto.storeName }</a></div>
		<div>${dto.visitDate }</div>
	</div>
	</c:forEach>
</div>

</body>
</html>










