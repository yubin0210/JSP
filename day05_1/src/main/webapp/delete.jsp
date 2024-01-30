<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${dao.delete(param.idx) }
<%
	response.sendRedirect("list.jsp");
%>
