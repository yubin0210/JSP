<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<c:set var="dto" value="${dao.selectOne(param.id) }" />
	
	<div class="view">
		<div>
			<img src="album_img/${dto.album_img }" height="200">
		</div>
		<div>
			<p><b>아티스트 : ${dto.artist_name }</b></p>
			<p><b>앨범 : ${dto.album_name }</b></p>
			<h3>${dto.name }</h3>
			<sub>${dto.isTitle == 1 ? '타이틀' : '수록곡' }</sub>
		</div>
	</div>
	
	<div>
		<pre>${dto.lyrics }</pre>
	</div>
</section>

</body>
</html>