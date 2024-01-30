<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp</title>
</head>
<body>

<h1>JSTL</h1>
<hr>
<h3>JSP Standard Tag Library</h3>
<h3>JSP에서 자주 사용하는 표준 태그 라이브러리</h3>

<ul>
	<li>JSTL Core : 변수(attribute) 선언, if, forEach 등 스크립틀릿 코드를 대신하는 태그</li>
	<li>JSTL functions : length, substring 등 추가적인 함수를 사용하기 위한 태그</li>
	<li>JSTL Format : 숫자, 날짜 및 시간 등의 서식을 지정하기 위한 태그</li>
	<li>JSTL Sql : JSP에서 SQL문을 이용하여 DB와 상호작용하기 위한 태그</li>
	<li>JSTL XML : xml 문서를 제어하기 위한 태그</li>
</ul>

<ol>
	<li>attribute는 페이지 간 객체를 공유할 수 있는 장점이 있다</li>
	<li>스크립틀릿 및 표현식은 attribute를 활용하기에 적합하지 않다</li>
	<li>표현식은 EL Tag를 이용하여 대체할 수 있다</li>
	<li>action태그는 기본 JSP문법을 확장하여 여러 태그를 제공하지만, 부족한점이 있었다</li>
	<li>여러 개발자들이 자신만의 태그를 생성하여 사용하기 시작했다 (Tag Library)</li>
	<li>같은, 비슷한 기능을 서로 다르게 사용하면서 표준이 필요해진다</li>
	<li>자주 사용되는 태그 중 표준을 지정하여 묶음파일로 제공하는 형태이다</li>
	<li>EL Tag는 JSP의 기본스펙이지만, JSTL은 라이브러리 파일을 /WEB-INF/lib 폴더에 넣어야 한다</li>
	<li>JSTL을 사용하기 위해서 상단에 taglib 지시자를 이용하여 선언해야 쓸 수 있다</li>
</ol>

</body>
</html>