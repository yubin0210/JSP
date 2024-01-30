<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view-show.jsp</title>
</head>
<body>

<h1>${dto.name } 의 정보 조회</h1>
<hr>

<h3>${dto.name }님은 ${dto.age }살이고, ${dto.age >= 20 ? '성인' : '미성년자' } 입니다</h3>

<p>
	<a href="list.jsp"><button>목록</button></a>
	<a href="delete.jsp?name=${dto.name }"><button>삭제</button></a>
</p>

</body>
</html>