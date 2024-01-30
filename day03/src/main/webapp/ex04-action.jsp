<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-action.jsp</title>
</head>
<body>

<h1>ex04-action.jsp</h1>
<hr>

<ol>
	<li>ex04-form에서 보내는 파라미터를 받는다</li>
	<li>Model 역할에 해당하는 클래스의 함수를 호출한다</li>
	<li>함수를 호출하면서 파라미터(들)을 인자로 전달한다</li>
	
	<li>함수 호출 결과 반환되는 반환값을 저장한다</li>
	
	<li>반환값이 문자열이라면 쿼리스트링 형식으로 전달할 수 있다</li>
	<li>반환값이 객체라면, 다른 방법을 사용해야 한다</li>
	<li>반환값을 다시 ex04-form으로 보내서 화면에 출력할 수 있게 한다</li>
</ol>

<jsp:useBean id="dto" class="food.FoodDTO" />
<jsp:setProperty property="*" name="dto" />

<ul>
	<li>storeName: <%=dto.getStoreName() %></li>
	<li>menuName : <%=dto.getMenuName() %></li>
	<li>category : <%=dto.getCategory() %></li>
	<li>menuPrice : <jsp:getProperty name="dto" property="menuPrice" /></li>
</ul>

</body>
</html>









