<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-form.jsp</title>
</head>
<body>

<h1>ex04-form.jsp</h1>
<hr>

<form action="ex04-action.jsp">
	<p><input type="text" name="storeName" placeholder="식당이름" required></p>
	<p><input type="text" name="menuName" placeholder="메뉴이름" required></p>
	<p>
		<select name="category" required>
			<option value="">=== 카테고리 ===</option>
			<option value="족발/보쌈">족발/보쌈</option>
			<option value="찜/탕/찌개">찜/탕/찌개</option>
			<option value="돈까스/회/일식">돈까스/회/일식</option>
			<option value="피자">피자</option>
			<option value="고기/구이">고기/구이</option>
			<option value="야식">야식</option>
			<option value="양식">양식</option>
			<option value="치킨">치킨</option>
			<option value="중식">중식</option>
		</select>
	</p>
	<p><input type="number" name="menuPrice" placeholder="주문금액" min="0" step="100" required></p>
	<p><input type="submit"></p>
</form>







</body>
</html>