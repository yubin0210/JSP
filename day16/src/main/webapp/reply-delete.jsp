<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="reply.ReplyDTO" />
<jsp:setProperty property="*" name="dto" />
<jsp:setProperty property="writer" name="dto" value="${login.userid }" />

${replyDAO.delete(dto) }

<c:redirect url="/view.jsp?idx=${param.board_idx }" />
<%--
		댓글을 삭제한다 (삭제하기 위해서는 reply의 PK에 해당하는 idx값이 필요하다)
		delete from reply where idx = ?
		
		현재 로그인 사용자 본인의 댓글이 아니면 삭제되지 않게끔 코드를 추가
		delete from reply where idx = ? and writer = ?
		
		삭제 프로세스가 끝나면, 게시글 보기 페이지로 이동(이동하기 위해서 board의 idx가 필요하다)
		redirect url="board.jsp"
		redirect url="view.jsp"
		
		삭제할 댓글의 idx, 이동할 게시글의 idx 2개가 필요하다
 --%>
 

</body>
</html>









