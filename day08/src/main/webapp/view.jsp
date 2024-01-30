<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:set var="dto" value="${dao.selectOne(param.idx) }" />
	<div>${dto.videoTag }</div>
	<div class="title"><h3>${dto.title }</h3></div>
	<div>${dto.channelName }</div>
	<div>
		<a href="${cpath }/modify.jsp?idx=${dto.idx}"><button>수정</button></a>
		<button id="deleteBtn">삭제</button>
	</div>
</section>

<script>
	deleteBtn.onclick = function() {
		const flag = confirm('정말 삭제하시겠습니까')
		if(flag) {
			location.href = '${cpath}/delete.jsp?idx=${dto.idx}'
		}
	}
</script>

</body>
</html>