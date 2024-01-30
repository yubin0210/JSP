<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>

<h1>문자열 입력 및 저장, 목록 출력하기</h1>
<hr>

<form>
	<p><input type="text" name="studentName" placeholder="학생 이름 입력" required autofocus></p>
	<p><input type="submit" value="등록"></p>
</form>

<%@ page import="java.util.ArrayList" %>

<%!
	ArrayList<String> list = new ArrayList<>();
%>

<%
	String studentName = request.getParameter("studentName");

	if(studentName != null && list.contains(studentName) == false) {
		list.add(studentName);
		list.sort(null);	// String은 Comparable 하기 때문에 null을 전달하면 된다
	}
%>

<ol>
<%-- <li><%= name %></li> --%>
<%	
	for(String name : list) { 
		out.println("<li>" + name + "</li>");
		 
	} 
%>
</ol>

</body>
</html>