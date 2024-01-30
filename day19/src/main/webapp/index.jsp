<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<h3>대문페이지</h3>
	<table id="boardList">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
			</tr>
		</thead>
		<c:set var="list" value="${boardDAO.selectList(param.search) }" />
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td>
					<a href="${cpath }/view.jsp?idx=${dto.idx}">
					${dto.title }
					${not empty dto.image ? '💾': '' }
					</a>
				</td>
				<td>${dto.writer }</td>
				<td>${dto.viewCount }</td>
				<td>${dto.writeDate }</td>
			</tr>		
		</c:forEach>
	</table>
	
	<div class="sb">
		<div>
			<form>
				<input type="search" name="search" value="${param.search }" placeholder="검색어를 입력하세요">
				<input type="submit" value="검색">
			</form>
		</div>
		<div>
			<a href="${cpath }/write.jsp"><button>새 글 작성</button></a>
		</div>
	</div>
	
	
	
	
	
	
	
	
</main>

</body>
</html>