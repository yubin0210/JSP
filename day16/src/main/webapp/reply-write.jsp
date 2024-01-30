<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="reply.ReplyDTO" />
<jsp:setProperty property="*" name="dto" />

<c:set var="row" value="${replyDAO.insert(dto) }" />
<c:redirect url="/view.jsp?idx=${dto.board_idx }#reply" />

</body>
</html>