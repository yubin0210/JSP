<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h3>login.jsp</h3>
	<form action="login-action.jsp" method="POST">
		<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
		<p><input type="password" name="userpw" placeholder="password" required></p>
		<p><input type="submit" value="로그인"></p>
	</form>
</section>

</body>
</html>