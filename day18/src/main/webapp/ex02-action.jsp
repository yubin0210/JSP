<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ex02.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>

<h1>제출 결과</h1>
<hr>

<c:set var="fileUtil" value="${FileUtil.getInstance() }" />
<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }" />

<h3>title : ${dto.title }</h3>
<h3>imageName : ${dto.image }</h3>
<h3>eventDate : ${dto.eventDate }</h3>

<div>
	<img src="upload/${dto.image }">
</div>
<a href="ex02-form.jsp"><button>다시 제출하기</button></a>

</body>
</html>




