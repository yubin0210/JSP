<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-view.jsp</title>
</head>
<body>

<h1>게시글 읽기</h1>
<hr>
<%
	int[] arr = { 4, 8, 2, 7, 6 };
	out.print("<p>");
	for(int i = 0; i < arr.length; i++) {
		out.print(arr[i] + " ");
	}
	out.print("</p>");
%>

<pre>
	1979년 12월 12일, 대한민국 육군 내 불법 사조직인[30] 하나회의 쌍두마차 
	전두환과 노태우가 주도하여 일으킨 군사 쿠데타로 제5공화국의 실질적인 시작이 되는 사건이다.
	사건이 발생한 이래로 문민정부 시기까진 주로 12.12 사태 내지 12.12 사건으로 불렸으나[31] 
	김영삼의 역사바로세우기 사업을 거치며 반정부 군사 쿠데타(내란)로 재정의되어 
	공식적으로 12.12 군사반란이라 불리게 되었다.
</pre>

<jsp:include page="ex04-list.jsp" />

</body>
</html>

