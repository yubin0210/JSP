<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>게시글 상세 보기</h3>

<fieldset>
	<c:set var="dto" value="${boardDAO.selectOne(param.idx) }" />
	<h4>${dto.title } | ${dto.writer } | ${dto.writeDate }</h4>
	<pre>${dto.content }</pre>
</fieldset>
<br>
<a href="${cpath }/board.jsp"><button>목록으로</button></a>

</body>
</html>