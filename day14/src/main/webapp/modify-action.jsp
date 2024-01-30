<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="day14.MemberDTO" />
<jsp:setProperty property="*" name="dto" />

<c:set var="row" value="${dao.update(dto) }" />

<c:if test="${row != 0 }">
	<c:redirect url="/list.jsp" />
</c:if>

</body>
</html>