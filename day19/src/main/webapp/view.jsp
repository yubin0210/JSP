<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
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
				${dto.ipaddr } 에서 ${dto.writeDate } 에 작성됨
			</td>
		</tr>
	</table>
	
	<div class="sb">
		<div>
			<a href="${cpath }"><button>목록</button></a>
		</div>
		<div>
			<a href="${cpath }/modify.jsp?idx=${dto.idx}"><button>수정</button></a>
			<a href="${cpath }/delete.jsp?idx=${dto.idx}"><button>삭제</button></a>
		</div>
	</div>
</main>

</body>
</html>