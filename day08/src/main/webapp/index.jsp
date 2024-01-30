<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<style>
	div.videoList {
		display: flex;
		flex-flow: wrap;
	}
	div.item {
/* 		border: 1px dashed green; */
		width: 400px;
		height: 350px;
		box-sizing: border-box;
		margin: 10px;
	}
	div.thumbnail {
		box-sizing: border-box;
		position: relative;
		width: 400px;
		height: 240px;
		border-radius: 15px;
		overflow: hidden;
		margin-bottom: 5px;
	}
	div.thumbnail > a > img,
	div.thumbnail > iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 400px;
		height: 240px;
	}
	div.thumbnail > a > img {
		z-index: 2;
	}
	div.thumbnail > iframe {
		z-index: 1;
	}
	div.title {
		font-weight: 550;
		margin-bottom: 10px;
	}
	div.channel-name {
		color: #777;
		font-size: 15px;
	}
</style>

<section>
	<div class="categoryList">
		<a href=""><button class="category selected">전체</button></a>
		<a href=""><button class="category">게임</button></a>
	</div>
	
	
	<div class="videoList">
		<c:set var="list" value="${dao.selectList() }" /> 
		<c:forEach var="dto" items="${list }">
			<div class="item">
				<div class="thumbnail">
					<a href="${cpath }/view.jsp?idx=${dto.idx}"><img src="${dto.thumbnail }"></a>
						${dto.videoTag }
				</div>
				<div class="title">${dto.title }</div>
				<div class="channel-name">${dto.channelName }</div>
			</div>
		</c:forEach>
	</div>
</section>

<script>
	const thumbnailList = document.querySelectorAll('div.thumbnail')
	
	thumbnailList.forEach(e => {
		e.onmouseover = function(event) {
			let target = event.target
			while(target.tagName != 'DIV') {
				target = target.parentNode
			}
			const img = target.querySelector('a > img')
			const iframe = target.querySelector('iframe')
			const src = iframe.src
			setTimeout(() => img.style.zIndex = 0, 2000)
			
			if(src.includes('?') == false) {
				iframe.originalSource = src
				iframe.src = src + '?autoplay=1&mute=1&controls=0'
			}	
		}
		
		e.onmouseout = function(event) {
			let target = event.target
			while(target.tagName != 'DIV') {
				target = target.parentNode
			}
			const img = target.querySelector('img')
			const iframe = target.querySelector('iframe')
			iframe.src = iframe.originalSource
			setTimeout(() => img.style.zIndex = 2, 2000)
		}
	})
</script>

</body>
</html>