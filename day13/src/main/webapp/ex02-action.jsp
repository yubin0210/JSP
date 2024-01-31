<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-action.jsp</title>
</head>
<body>
<%!
	String[] idArray = 		{"test",  	"admin", 	"itbank"};
	String[] pwArray = 		{"1234",  	"1", 		"it"};
	String[] nameArray = 	{"테스트", 	"관리자", 	"홍길동"};
	
	public String login(String userid, String userpw) {
		String name = null;
		for(int i = 0; i < 3; i++) {
			if(idArray[i].equals(userid)) {
				if(pwArray[i].equals(userpw)) {
					name = nameArray[i];
					break;
				}
			}
		}
		return name;
	}
%>
<%
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	
	String name = login(userid, userpw);
	
	if(name != null) {
		session.setAttribute("login", name);	// 세션에 원하는 이름으로 객체를 저장한다
		session.setMaxInactiveInterval(300);	// 세션의 최대 유효시간을 300초로 설정한다
		
		response.sendRedirect("ex02-form.jsp");
	}
%>

<script>
	alert('일치하는 계정을 찾을 수 없습니다')
	history.go(-1)	// history.back()
</script>

</body>
</html>











