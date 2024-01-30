<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid black;
	}
	td, th {
		padding: 10px;
		border: 1px solid grey;
	}
</style>
</head>
<body>

<h1>JSP 내장 객체 종류</h1>
<hr>

<h3>스크립틀릿에서 따로 생성하지 않아도 참조할 수 있는 객체</h3>

<table>
	<tr>
		<td>request</td>
		<td>클라이언트가 보낸 요청 정보를 객체화 한 형태</td>
		<td>attribute 저장 가능</td>
	</tr>
	<tr>
		<td>response</td>
		<td>클라이언트에 보낼 응답 정보를 담기위한 객체</td>
		<td>리다이렉트, 쿠키등의 정보를 보낼 수 있음</td>
	</tr>
	<tr>
		<td>session</td>
		<td>클라이언트 접속마다 하나씩 생성되는 객체</td>
		<td>attribute 저장 가능, 주로 로그인 처리에 사용한다</td>
	</tr>
	<tr>
		<td>pageContext</td>
		<td>응답 페이지 실행에 필요한 정보를 저장</td>
		<td>attribute 저장 가능, 다른 내장객체로 이어지는 연결점</td>
	</tr>
	<tr>
		<td>out</td>
		<td>response에 응답 내용을 기록하기 위한 outputstream</td>
		<td>표현식은 out객체로 처리한다</td>
	</tr>
	<tr>
		<td>application</td>
		<td>서버에서 실행되는 servletContext의 정보를 저장하는 객체</td>
		<td>attribute 저장 가능</td>
	</tr>
	<tr>
		<td>config</td>
		<td>특정 페이지에 대한 설정을 저장하는 객체</td>
		<td></td>
	</tr>
	<tr>
		<td>page</td>
		<td>특정 페이지의 서블릿 객체</td>
		<td></td>
	</tr>
	<tr>
		<td>exception</td>
		<td>예외처리를 위한 객체</td>
		<td></td>
	</tr>
</table>

<%
	String currentPath = application.getRealPath(".");
	out.println("<p>" + currentPath + "</p>");
	
	out.print("<p>page : " + (pageContext.getPage() == this) + "</p>");
	out.print("<p>request : " + (pageContext.getRequest() == request) + "</p>");
	out.print("<p>response : " + (pageContext.getResponse() == response) + "</p>");
	out.print("<p>session : " + (pageContext.getSession() == session) + "</p>");
	out.print("<p>out : " + (pageContext.getOut() == out) + "</p>");
	out.print("<p>application : " + (pageContext.getServletContext() == application) + "</p>");
	out.print("<p>config : " + (pageContext.getServletConfig() == config) + "</p>");
// 	out.print("<p>exception : " + (pageContext.getException() == exception) + "</p>");
	
%>

<h3>EL Tag 에서 pageContext만으로 나머지 내장객체에 접근하는 역할을 수행한다</h3>

<h4>request.getContextPath() : ${pageContext.request.contextPath }</h4>
<h4>request.getContextPath() : <%=request.getContextPath() %></h4>

</body>
</html>














