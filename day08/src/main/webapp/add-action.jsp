<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="youtube.YoutubeDTO" />
<jsp:setProperty property="*" name="dto" />

<c:set var="row" value="${dao.insert(dto) }" />
<c:redirect url="/" />

</body>
</html>