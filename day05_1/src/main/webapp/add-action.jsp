<%@ page import="book.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	jsp:useBean 태그는 자바 객체를 생성함과 동시에 내장객체에 attribute로 등록한다
	따라서 useBean으로 생성한 객체는 EL Tag로 참조가능하다
	
	list.jsp 에서 dao 객체를 application에 attribute로 등록했다
	따라서 dao 객체도 EL Tag로 참조 가능하다
 --%>
<jsp:useBean id="dto" class="book.BookDTO" scope="page" />
<jsp:setProperty property="*" name="dto" />

${dao.insert(dto) }

<%
// 	response.sendRedirect("list.jsp");

	int lastIdx = BookDTO.getSeq();
	response.sendRedirect("view.jsp?idx=" + lastIdx);
%>
