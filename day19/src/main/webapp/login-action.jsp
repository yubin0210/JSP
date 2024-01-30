<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO" />
<jsp:setProperty name="dto" property="*" />

<c:set var="login" value="${memberDAO.login(dto) }" scope="session" />
<c:if test="${not empty login }">
	<c:redirect url="/" />
</c:if>

<script>
	alert('로그인 실패')
	history.go(-1)
</script>

</body>
</html>