<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>

<h1>쿠키를 활용한 팝업 광고 처리</h1>
<hr>

<c:if test="${empty cookie.donotpopup }">
	<script>
		const url = 'ex03-advertise.jsp'
		let options = ''
		options += 'menubar=no,'
		options += 'toolbar=no,'
		options += 'width=400,'
		options += 'height=310,'
		options += 'status=no'
		window.open(url, '', options)
	</script>
</c:if>

<h3>cookie : ${cookie.donotpopup.value }</h3>

</body>
</html>



