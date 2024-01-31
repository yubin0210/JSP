<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>ex01.jsp</h1>
<hr>

<h3>JSP (model 1)의 장단점</h3>
<ul>
	<li>HTML 과 Java 코드를 함께 사용할 수 있다</li>
	<li>Java코드를 편리하게 사용하기 위한 라이브러리가 있다 (EL/JSTL)</li>
	<li>개발 로직과 화면 구성을 동시에 수행할 수 있다 (개발이 빠르다)</li>
</ul>

<ul>
	<li>사이트 규모가 커지면, 파일 관리가 어려워진다</li>
	<li>개발 로직과 화면 구성을 동시에 수행할 수 있다 (유지보수가 까다롭다)</li>
	<li>HTML과 Java코드를 분리하여 처리 및 표현을 별도로 개발하는 편이 더 좋다</li>
</ul>

<style>
	#wrap {
		width: 500px;
		height: 500px;
		background-color: lightpink;
		margin: auto;
		position: relative;
		padding: 20px;
		text-align: right;
		font-size: 50px;
	}
	.item1, .item2, .item3 {
		position: absolute;
		top: 20px;
		left: 20px;
		width: 300px;
		height: 300px;
		background-color: red;
		color: white;
		font-size: 20px;
		z-index: 2;
		padding: 20px;
		box-sizing: border-box;
	}
	.item2 {
		top: 120px;
		left: 120px;
		z-index: 3;
		background-color: green;
	}
	.item3 {
		top: 220px;
		left: 220px;
		z-index: 4;
		background-color: blue;
	}

</style>
<div id="wrap">
	JSP
	<div class="item1">Model(Database)</div>
	<div class="item2">View(HTML)</div>
	<div class="item3">Controller(Java)</div>
</div>

</body>
</html>