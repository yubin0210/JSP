<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<style>
	input[type="text"],
	textarea {
		padding: 10px;
	}
</style>

<section>
	<c:set var="dto" value="${dao.selectOne(param.idx) }" />
	<h3>영상 수정 : ${dto.title }</h3>
	<form action="modify-action.jsp">
		<input type="hidden" name="idx" value="${dto.idx }">
		<p><input type="text" name="title" placeholder="영상 제목" value="${dto.title }" autocomplete="off" required autofocus></p>	
		<p><input type="text" name="channelName" placeholder="채널 이름" value="${dto.channelName }" autocomplete="off" required></p>	
		<p><input type="text" name="thumbnail" placeholder="썸네일 주소" value="${dto.thumbnail }" autocomplete="off" required></p>	
		<p><textarea name="videoTag"
					 rows="5" cols="40"
					 style="resize: none;" 
					 placeholder="영상 소스 태그" required>${dto.videoTag }</textarea></p>	
		<p><input type="submit"></p>	
	</form>
</section>

</body>
</html>