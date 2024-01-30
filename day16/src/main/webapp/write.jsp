<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:if test="${pageContext.request.method == 'GET' }">
	<c:if test="${empty login }">
		<script>
			alert("먼저 로그인 후 글을 작성할 수 있습니다")
			location.href = '${cpath}/login.jsp'
		</script>
	</c:if>
	<form method="POST">
		<p><input type="text" name="title" placeholder="제목" required autofocus></p>
		<input type="hidden" name="writer" value="${login.userid }">
		<p>
			<textarea name="content" placeholder="내용" rows="8" cols="60" required></textarea>
		</p>
		<p><input type="submit" value="작성하기"></p>
	</form>
</c:if>

<c:if test="${pageContext.request.method == 'POST' }">
	<jsp:useBean id="dto" class="board.BoardDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="row" value="${boardDAO.insert(dto) }" />
	<c:redirect url="/board.jsp" />
</c:if>

</body>
</html>