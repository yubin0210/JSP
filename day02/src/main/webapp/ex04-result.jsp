<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-result.jsp</title>
</head>
<body>

<h1>ex04-result.jsp</h1>
<hr>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String msg = "";
	
	if(name != null) {
		String adult = Integer.parseInt(age) >= 20 ? "성인" : "미성년자";
		msg = String.format("%s님의 나이는 %s살이고, %s입니다", name, age, adult);
	}
%>
<h3><%=msg %></h3>
<a href="ex04-form.jsp"><button>다시 입력</button></a>

</body>
</html>



