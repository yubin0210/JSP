<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<c:set var="row" value="${boardDAO.updateViewCount(param.idx) }" />
	
	<c:set var="dto" value="${boardDAO.selectOne(param.idx) }" />
	<table id="boardView">
		<tr>
			<td>${dto.idx }. ${dto.title } (${dto.writer })</td>
		</tr>
		<tr>
			<td>조회수 : ${dto.viewCount }</td>
		</tr>
		<tr>
			<td>
				<c:if test="${not empty dto.image }">
					<img src="${cpath }/reviewImage/${dto.image}">
				</c:if>
				<pre>${dto.content }</pre>
			</td>
		</tr>
		<tr>
			<td>
				${dto.ipaddr } 에서 
				<fmt:formatDate value="${dto.writeDate }" pattern="yyyy년 MM월 dd일 a hh시 mm분" />
				에 작성됨
			</td>
		</tr>
	</table>
	
	<div class="sb">
		<div>
			<a href="${cpath }"><button>목록</button></a>
		</div>
		<div>
			<c:if test="${dto.writer == login.userid }">
				<a href="${cpath }/modify.jsp?idx=${dto.idx}"><button>수정</button></a>
				<a class="deleteBtn"
				   idx="${dto.idx }" 
				   href="${cpath }/delete.jsp?idx=${dto.idx}"><button>삭제</button></a>
			</c:if>
		</div>
	</div>
	
	<div id="reply">
		<div id="replyWrite">
			<form method="POST" id="replyWriteForm">
				<textarea name="content" rows="5" cols="80" required></textarea>
				<input type="hidden" name="writer" value="${login.userid }">
				<input type="hidden" name="board_idx" value="${dto.idx }">
				<input type="hidden" name="parent_idx" value="0">
				<input type="hidden" name="reply_depth" value="0">
				<input type="submit" name="댓글등록">
			</form>
			<c:if test="${pageContext.request.method == 'POST' }">
				<jsp:useBean id="reply" class="board2.ReplyDTO" />
				<jsp:setProperty property="*" name="reply" />
				<c:set var="row" value="${boardDAO.insertReply(reply) }" />
				<c:redirect url="/view.jsp?idx=${dto.idx }" />
			</c:if>
		</div>
		
		<div id="replyList">
			<c:forEach var="reply" items="${boardDAO.selectReplyList(param.idx) }">
			<div class="replyItem" 
			     idx="${reply.idx }" reply_depth="${reply.reply_depth }"
			     style="border: 1px solid grey; 
			       	    padding: 10px; 
			       	    margin: -1px; 
			       	    margin-left: ${reply.reply_depth * 30}px">
				<p>${reply.writer }</p>
				<pre>${reply.content }</pre>
				<button class="replyBtn">답글달기</button>
			</div>
			</c:forEach>
		</div>
	</div>
</main>

<script>
	const replyBtnList = document.querySelectorAll('button.replyBtn')
	const replyBtnHandler = function() {
		const form = document.getElementById('replyWriteForm')
		const reply = event.target.parentNode
		
		form.querySelector('input[name="parent_idx"]').value = reply.getAttribute('idx')
		form.querySelector('input[name="reply_depth"]').value = +reply.getAttribute('reply_depth') + 1
		
// 		document.querySelectorAll('.replyItem').forEach(e => e.style.border = 0)
		reply.style.border = '2px solid skyblue'
		reply.appendChild(form)
		form.querySelector('textarea').focus()
	}
	replyBtnList.forEach(e => e.onclick = replyBtnHandler)
	
	const replyItemList = document.querySelectorAll('div.replyItem')
	replyItemList.forEach((div, index) => {
		const depth = div.getAttribute('reply_depth')
		if(depth == 0) {
			div.style.marginTop = '10px'
			div.style.background = '#eee'
		}
		else if(index != 0) {
			const prevDiv = replyItemList[index - 1]
			const prevDepth = prevDiv.getAttribute('reply_depth')
			if(depth - prevDepth == 1) {
				const line = document.createElement('div')
				line.innerText = '└─'
				div.style.position = 'relative'
				line.style.position = 'absolute'
				line.style.top = '0'
				line.style.left = '-35px'
				div.appendChild(line)
			}
		}
	})
</script>


<script>
	// 1) 문서 전체에서 a태그 중에서 클래스가 deleteBtn인 모든 요소를 nodeList 형태로 불러온다
	const deleteBtnList = document.querySelectorAll('a.deleteBtn')
	
	// 2) 이벤트 함수를 정의한다
	const deleteHandler = function(event) {
		event.preventDefault()		// 이벤트 기본 작동을 막는다 (a의 기본작동: 링크 페이지 이동)
		let target = event.target	// 이벤트 대상을 target에 저장한다
		
		// 클릭된 요소의 클래스에 deleteBtn이 포함되어 있지 않다면 반복을 수행한다
		while(target.classList.contains('deleteBtn') == false) {
			target = target.parentNode	// 현재 target의 상위 요소(부모 노드)를 target에 저장한다
		}
		
		const idx = target.getAttribute('idx')	// target의 idx를 저장한다
		const url = target.href					// target의 href를 저장한다
		const flag = confirm(idx + '번 게시글을 삭제하시겠습니까?')	// 사용자에게 확인/취소 묻기
		if(flag) {				// 만약, 확인을 클릭했으면
			location.href = url	// 브라우저의 주소창을 <a href="">의 값으로 변경한다 (페이지 이동)
		}
	}
	
	// 3) deleteBtnList의 모든 요소를 element라고 할때, element를 클릭하면 deleteHandler가 실행되도록 연결한다
	deleteBtnList.forEach(element => element.onclick = deleteHandler)
</script>

</body>
</html>









