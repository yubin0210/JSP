<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>

	<div class="sb">
		<form action="index.jsp">
			<p>
				<input type="search" name="search" placeholder="검색어를 입력하세요"
					   autofocus value="${param.search }">
				<input type="submit" value="검색">	  
		  	</p>
		</form>
		<div>
			<a href="add.jsp"><button>추가</button></a>
		</div>
	</div>
	
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>ARTIST_NAME</th>
				<th>ALBUM_NAME</th>
				<th>NAME</th>
				<th>PLAYTIME</th>
				<th>기능</th>
			</tr>
		</thead>
		<tbody>
		
		<c:set var="list" value="${dao.selectAll(param.search) }" />
		<c:forEach var="dto" items="${list }">
		
			<tr bgcolor="${dto.isTitle == 1 ? 'lightpink' : 'white' }">
				<td>${dto.id}</td>
				<td>
					<img src="artist_img/${dto.artist_img }" height="40">
					${dto.artist_name}
				</td>
				<td>
					<img src="album_img/${dto.album_img }" height="40">
					${dto.album_name}
				</td>
				<td><a href="view.jsp?id=${dto.id }">${dto.name }</a></td>
				<td>${dto.playTime }</td>
				<td>
					<a href="modify.jsp?id=${dto.id }"><button>수정</button></a>
					<button class="deleteBtn" itemId="${dto.id }">삭제</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</section>

<script>
	// 삭제할 때 사용할 주소 (문자열)
	const url = 'delete.jsp?id='
			
	// 문서 안에 있는 모든 삭제 버튼(클래스가 deleteBtn인 모든 요소)
	const deleteBtnList = document.querySelectorAll('.deleteBtn')
	
	// 버튼의 개수만큼 반복문 실행
	for(let i = 0; i < deleteBtnList.length; i++) {
		const btn = deleteBtnList[i]	// [i]번째 요소를 btn에 저장
		btn.onclick = function(event) {	// btn을 클릭하면 실행되는 함수 정의	
			const id = event.target.getAttribute('itemId')	// 클릭 대상의 itemId 가져오기
			const flag = confirm(id + ' : 정말 삭제하시겠습니까')// 물어보기
			if(flag) {						// 확인버튼을 클릭하면
				location.href = url + id	// 지정한 주소로 이동시킨다
			}
		}
	}
</script>



</body>
</html>













