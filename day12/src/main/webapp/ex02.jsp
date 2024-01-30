<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
<style>
	.black {
		background-color: black;
		color: #dadada;
	}
	.lime {
		background-color: black;
		color: #00FF00;
	}
	.aqua {
		background-color: black;
		color: #00FFFF;
	}
	.orange {
		background-color: black;
		color: orange;
	}
	pre {
		font-size: 16px;
	}
</style>
</head>
<body class="${cookie.theme.value }">

<h1>쿠키를 활용한 색상 테마 설정</h1>
<hr>

<form action="ex02-action.jsp">
	<select name="theme">
		<option>white</option>
		<option ${cookie.theme.value == 'black' ? 'selected' : '' }>black</option>
		<option ${cookie.theme.value == 'lime' ? 'selected' : '' }>lime</option>
		<option ${cookie.theme.value == 'aqua' ? 'selected' : '' }>aqua</option>
		<option ${cookie.theme.value == 'orange' ? 'selected' : '' }>orange</option>
	</select>
	<input type="submit">
</form>

<fieldset>
	<legend>lorem</legend>
<pre>1979년 12월 12일, 수도 서울 군사반란 발생
그날, 대한민국의 운명이 바뀌었다.

대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시
12월 12일, 보안사령관 전두환(전두광)이 반란을 일으키고
군 내 사조직을 총동원하여 최전선의 전방부대까지 빼내 수도 서울로 불러들인다.

권력에 눈이 먼 전두광 보안사령관의 반란군과 이에 맞선 수도경비사령관 장태완(이태신)을 비롯한
정부군 사이, 일촉즉발의 9시간이 흘러가는데…

목숨을 건 두 세력의 팽팽한 대립과 갈등
오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!</pre>
</fieldset>


<div>
	<button id="checkCookie">쿠키 확인</button>
</div>

<script>
	checkCookie.onclick = function() {
		alert(document.cookie)
	}
</script>

</body>
</html>















