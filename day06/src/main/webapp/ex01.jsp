<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>directive</h1>
<hr>

<table border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th>종류</th>
		<th>역할</th>
		<th>예시</th>
	</tr>
	<tr>
		<td>page</td>
		<td>JSP 작성 시 기본 생성, 세션 사용여부, 예외처리 여부, autoFlush, 인코딩 등을 설정</td>
		<td>&lt;%@ page session="false" isErrorPage="true" %></td>
	</tr>
	<tr>
		<td>include</td>
		<td>다른 JSP의 내용을 특정 위치에 포함시킨다</td>
		<td>&lt;%@ include file="header.jsp" %></td>
	</tr>
	<tr>
		<td>taglib</td>
		<td>기본 스펙에 포함되지 않는 별도의 태그를 사용하기 위해 선언한다</td>
		<td>&lt;%@ taglib prefix="c" uri="" %></td>
	</tr>
</table>

</body>
</html>