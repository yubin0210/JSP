<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>추가</h3>
<form action="add-action.jsp">
	<p><input type="text" name="name" placeholder="이름" required autofocus></p>
	<p><input type="text" name="pnum" placeholder="전화번호" required></p>
	<p><input type="number" name="age" placeholder="나이" min="1" max="100" required></p>
	<p>
		<label><input type="radio" name="favorite" value="Y">Y</label>
		<label><input type="radio" name="favorite" value="N" checked>N</label>
	</p>
	<p><input type="submit"></p>
</form>

</body>
</html>