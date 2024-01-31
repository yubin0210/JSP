<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>

<h1>ex01 - cookie</h1>
<hr>

<h3>서버에서 특정 값을 문자열로 생성하여 클라이언트에 보관하는 형식의 데이터</h3>
<h3>문자열 형태로 저장해두면, 다음번 방문 시 서버가 값을 회수하여 활용할 수 있다</h3>
<h3>쿠키는 일정시간 지나면 자동으로 소멸하게 되어 있다</h3>
<h3>쿠키는 클라이언트(브라우저)가 저장하기 때문에, 브라우저마다 다른 내용을 저장한다</h3>

<form action="ex01-action.jsp">
	<input type="text" name="memo" placeholder="메모">
	<input type="submit" value="쿠키 만들기">
</form>

<fieldset>
	<legend>쿠키 확인</legend>
	<%@ page import="java.net.URLDecoder" %>
	<%
		// 클라이언트가 서버에 방문 시 가지고 있던 쿠키를 요청에 담아서 보낸다
		// 첫번째 방문이라면 cookies 배열의 값은 null일 수도 있다
		Cookie[] cookies = request.getCookies();
		
		// 쿠키의 값은 항상 문자열 형태이다. 쿠키의 값을 저장할 변수를 미리 만들어둔다
		String value = "";
		
		// cookies가 null이면 cookies.length에서 NullPointerException이 발생할 수도 있다
		for(int i = 0; cookies != null && i < cookies.length; i++) {
			Cookie c = cookies[i];
			if(c.getName().equals("memo")) {	// 내가 저장한 쿠키의 이름 memo와 일치하는 쿠키를 찾는다
				value = c.getValue();
				break;
			}
		}
		out.print("<p>쿠키의 값 : " + URLDecoder.decode(value, "UTF-8") + "</p>");
	%>
</fieldset>
<br>

<fieldset>
	<legend>쿠키 출력 (EL Tag)</legend>
	<p>쿠키의 값 : ${URLDecoder.decode(cookie.memo.value, 'UTF-8') }</p>
</fieldset>


















</body>
</html>