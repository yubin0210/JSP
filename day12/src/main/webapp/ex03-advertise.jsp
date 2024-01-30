<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ex03-advertise.jsp</title>
<style>
	.root {
		width: 100%;
		margin: auto;
		text-align: center;
	}
	.sb {
		display: flex;
		justify-content: space-between;
	}
</style>
</head>
<body>

<div class="root">
	<img src="3.jpg" height="200">
	<h3>Happy New Year !!</h3>
	
	<form action="ex03-close.jsp">
	<div class="sb">
		<div>
			<label>
				<input type="checkbox" name="makeCookie">
				30초 동안 이 광고를 표시하지 않습니다
			</label>
		</div>
		<div>
			<input type="submit" value="닫기">
		</div>
	</div>
	</form>
</div>

</body>
</html>







