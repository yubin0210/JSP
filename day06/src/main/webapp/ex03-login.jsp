<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ex03-header.jsp" %>

<h3>로그인</h3>

<form>
	<p><input name="id" placeholder="ID" value="${list[4] }"></p>
	<p><input type="password" name="pw" placeholder="Password" value="${arr[3] }"></p>
	<p><input type="submit"></p>
</form>

</body>
</html>