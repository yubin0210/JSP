<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%--1) 파라미터가 여러개라서 객체로 묶어서 받으려면 jsp:useBean, jsp:setProperty를 사용 --%>

<%--2) 파라미터가 하나만 넘어온다면 EL Tag의 param.을 이용하여 바로 참조 --%>

<c:set var="row" value="${dao.delete(param.id) }" />

<%--3) dao에 delete 함수가 있어야 한다 --%>
<%--4) insert/update/delete는 정수를 반환한다 --%>

<c:if test="${row != 0 }">
	<c:redirect url="/" />
</c:if>

<script>
	alert('삭제 실패')
	history.back()
</script>

</body>
</html>