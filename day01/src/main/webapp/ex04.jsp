<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid black;
	}
	td, th {
/* 		padding: 10px; */
		border: 1px solid grey;
	}
	thead {
		background-color: #dadada;
	}
</style>
</head>
<body>

<h1>hr 계정 employees 테이블 불러오기</h1>
<hr>

<%@ page import="java.util.List, ex03.EmployeeDTO, ex03.Ex03DAO" %>

<%!
	// 선언부 (declaration)
	private Ex03DAO dao = new Ex03DAO();
%>

<%
	// 스크립틀릿 (scriptlet, service() 함수)
	List<EmployeeDTO> list = dao.getEmployeeList();
%>

<table>
	<thead>
		<tr>
			<th>	EMPLOYEE_ID		</th>
			<th>	FIRST_NAME		</th>
			<th>	LAST_NAME		</th>
			<th>	EMAIL			</th>
			<th>	PHONE_NUMBER	</th>
			<th>	HIRE_DATE		</th>
			<th>	JOB_ID			</th>
			<th>	SALARY			</th>
			<th>	COMMISSION_PCT	</th>
			<th>	MANAGER_ID		</th>
			<th>	DEPARTMENT_ID	</th>
		</tr>
	</thead>
	<tbody>
		<%	for(EmployeeDTO dto : list) { %>
		<tr>
			<td><%=dto.getEmployee_id() %></td>
			<td><%=dto.getFirst_name() %></td>
			<td><%=dto.getLast_name() %></td>
			<td><%=dto.getEmail() %></td>
			<td><%=dto.getPhone_number() %></td>
			<td><%=dto.getHire_date() %></td>
			<td><%=dto.getJob_id() %></td>
			<td><%=dto.getSalary() %></td>
			<td><%=dto.getCommission_pct() %></td>
			<td><%=dto.getManager_id() %></td>
			<td><%=dto.getDepartment_id() %></td>
		</tr>
		<% 	}%>
	</tbody>
</table>

</body>
</html>