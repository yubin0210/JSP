<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>



<section>
	<h3>정보수정 (modify.jsp)</h3>
	<c:set var="dto" value="${dao.selectOne(param.userid) }" />
	
	<form method="POST" action="modify-action.jsp">
		<p><input type="text" name="userid" value="${dto.userid }" placeholder="ID" required readonly></p>
		<p><input type="password" name="userpw" value="${dto.userpw }" placeholder="Password" required autofocus></p>
		<p><input type="text" name="username" value="${dto.username }" placeholder="Name" required></p>
		<p><input type="email" name="email" value="${dto.email }" placeholder="foo@bar.com" required></p>
		<p>
			<label><input type="radio" name="gender" value="남성" ${dto.gender == '남성' ? 'checked' : '' } required>남성</label>
			<label><input type="radio" name="gender" value="여성" ${dto.gender == '여성' ? 'checked' : '' } required>여성</label>
		</p>
		<p><input type="submit" value="정보수정"></p>
	</form>
</section>

</body>
</html>