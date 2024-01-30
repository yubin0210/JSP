<%@ page import="ex07.FoodService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07-action.jsp</title>
</head>
<body>
<%
	FoodService service = (FoodService) application.getAttribute("service");
	if(service == null) {
		service = new FoodService();
		application.setAttribute("service", service);
	}
%>

<%--파라미터 받아서 객체로 저장하기 --%>
<%--useBean 액션태그는 자바 객체를 생성함과 동시에 pageContext에 attribute 형태로 저장한다 --%>
<jsp:useBean id="dto" class="ex07.FoodDTO" scope="page" />
<jsp:setProperty property="*" name="dto" />

<%
	// 자바 객체의 함수를 호출하면서 파라미터 객체를 전달하기
	int row = service.add(dto);

	if(row != 0) {	// 함수의 반환값을 저장하기
		application.setAttribute("list", service.getList());
	}
	
	// 작업이 끝났으면 원래 페이지로 이동
	response.sendRedirect("ex07-form.jsp");
%>

</body>
</html>