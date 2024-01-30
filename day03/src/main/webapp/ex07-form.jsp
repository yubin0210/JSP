<%@ page import="ex07.FoodDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07-form.jsp</title>
<style>
	input, select {
		padding: 5px 10px;
		width: 180px;
	}
	select, input[type="submit"] {
		width: 200px;
	}
	input[type="submit"] {
		all: clear;
		border: 2px solid black;
		border-radius: 10px;
		background-color: #dadada; 
		font-size: 17px;
		font-weight: bold;
	}
	input[type="submit"]:hover {
		background-color: black;
		color: white;
		box-shadow: 10px 10px 10px grey;
		cursor: pointer;
	}
	div#root {
		display: flex;
		justify-content: space-between;
		height: 85vh;
	}
	form {
		width: 230px;
		padding: 10px;
		border-right: 2px solid darkgrey;
	}
	table {
		width: 650px;
		height: 700px;
		border-collapse: collapse;
	}
	table thead {
		float: left;
		width: 100%;
	}
	table tbody {
		width: 650px;
		float: left;
		overflow-y: auto;
		overflow-x: hidden;
		height: 700px;  
	}
	table tbody::-webkit-scrollbar {
		display: none;
	}
	table tr {
		display: table;
	}
	
	tr > th:nth-child(1) {	width: 160px;	}
	tr > th:nth-child(2) {	width: 140px;	}
	tr > th:nth-child(3) {	width: 150px;	}
	tr > th:nth-child(4) {	width: 150px;	}
	
	tr > td:nth-child(1) {	width: 160px;	}
	tr > td:nth-child(2) {	width: 140px;	}
	tr > td:nth-child(3) {	width: 150px;	}
	tr > td:nth-child(4) {	width: 150px;	}
</style>
</head>
<body>

<h1>내가 좋아하는 배달음식 리스트</h1>
<hr>

<div id="root">
	<form action="ex07-action.jsp">
		<p><input type="text" name="storeName" placeholder="식당이름" required autofocus></p>
		<p><input type="text" name="menuName" placeholder="메뉴이름" required></p>
		<p>
			<select name="category" required>
				<option value="">=== 카테고리 ===</option>
				<option value="boonsik.png">분식</option>
				<option value="chicken.png">치킨</option>
				<option value="donggas.png">돈까스⋅회⋅일식</option>
				<option value="jjajang.png">중국집</option>
				<option value="nightfood.png">야식</option>
				<option value="pizza.png">피자</option>
				<option value="zokbal.png">족발⋅보쌈</option>
				<option value="zzim.png">찜⋅탕</option>
			</select>
		</p>
		<p><input type="number" name="menuPrice" placeholder="주문금액" min="0" step="100" required></p>
		<p><input type="submit" value="등록"></p>
	</form>

	<table border="1" cellpadding="10" cellspacing="0">
		<thead>
			<tr bgcolor="#dadada">
				<th>카테고리</th>
				<th>가게이름</th>
				<th>메뉴이름</th>
				<th>메뉴가격</th>
			</tr>
		</thead>
		<tbody>
		<% 
			List<FoodDTO> list = (List<FoodDTO>) application.getAttribute("list");
			for(int i = 0; list != null && i < list.size(); i++) {
				FoodDTO dto = list.get(i);
		%>
		<tr>
			<th><img src="category/<%=dto.getCategory() %>"></th>
			<td><%=dto.getStoreName() %></td>
			<td><%=dto.getMenuName() %></td>
			<td><%=dto.getMenuPrice() %></td>
		</tr>	
		<% 	}	%>	
		</tbody>
	</table>
</div>




</body>
</html>




