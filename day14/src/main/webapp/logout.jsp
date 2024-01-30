<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h3>logout.jsp</h3>
	<c:remove var="login" scope="session" />
	<c:redirect url="/" />
</section>

</body>
</html>