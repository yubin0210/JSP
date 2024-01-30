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
	<h3>영상 추가</h3>
	<form action="add-action.jsp">
		<p><input type="text" name="title" placeholder="영상 제목" autocomplete="off" required autofocus></p>	
		<p><input type="text" name="channelName" placeholder="채널 이름" autocomplete="off" required></p>	
		<p><input type="text" name="thumbnail" placeholder="썸네일 주소" autocomplete="off" required></p>	
		<p><textarea name="videoTag"
					 rows="5" cols="40"
					 style="resize: none;" 
					 placeholder="영상 소스 태그" required></textarea></p>	
		<p><input type="submit"></p>	
	</form>
</section>

</body>
</html>