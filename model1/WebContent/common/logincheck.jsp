<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	if(loginYn == null) {
		response.sendRedirect("/model1/loginhome.jsp?error=notlog");
		return;
	}
%>