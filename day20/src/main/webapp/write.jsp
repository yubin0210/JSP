<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<h3>게시글 작성</h3>
	<form method="POST" action="write-action.jsp" enctype="multipart/form-data">
		<p><input type="text" name="title" placeholder="제목"></p>
		<p><textarea name="content" placeholder="내용"></textarea></p>
		<p><input type="file" name="uploadFile"></p>
		<p><input type="submit" value="작성완료"></p>
		
		<input type="hidden" name="writer" value="${login.userid }">
		<input type="hidden" name="ipaddr" value="${pageContext.request.remoteAddr }">
	</form>
</main>

</body>
</html>