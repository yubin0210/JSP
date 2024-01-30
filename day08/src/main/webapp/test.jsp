<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div#root {
		display: flex;
		width: 900px;
		flex-flow: wrap;
	}
	div.item {
		width: 400px;
		height: 240px;
		box-sizing: border-box;
		margin: 10px;
	}
	div.thumbnail {
		position: relative;
		width: 400px;
		height: 240px;
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
</style>
</head>
<body>

<div id="root">
	<div class="item">
		<div class="thumbnail">
			<a href="view.jsp"><img src="https://i.ytimg.com/vi/NB90IFoHMps/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBDL-C_-kN8cziFar-vP8LEhh1i7A"></a>
			<iframe width="848" height="477" src="https://www.youtube.com/embed/NB90IFoHMps" 
					title="[#무도] 휴게소 음식은 못 참지🤤 &#39;얼큰이 칼국수 vs 김치 버섯 라면&#39; 명수의 선택으로 갈리는 준하와 멤버들의 희비ㅋㅋ &#39;여섯이 네고향&#39; 2편 MBC130622방송" frameborder="0" 
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>
	</div>
	<div class="item">
		<div class="thumbnail">
			<a href="view.jsp"><img src="https://i.ytimg.com/vi/qtpGebHyqsg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBX_QZz-NloTHEvi4NV__7sx6o16w"></a>
				<iframe width="640" height="360"
					src="https://www.youtube.com/embed/qtpGebHyqsg"
					title="검정치마 everything 일렉 하나로 부르기" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
	</div>
</div>

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



