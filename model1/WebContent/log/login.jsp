<%@page import="com.model1.vo.User"%>
<%@page import="com.model1.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("userid");
	String password = request.getParameter("userpwd");
	
	UserDao userDao = new UserDao();
	User user = userDao.getUserById(id);
	
	if(user == null) {
		response.sendRedirect("../loginhome.jsp?error=fail");
		return;
	}
	if(!user.getPassword().equals(password)){
		response.sendRedirect("../loginhome.jsp?error=fail");
		return;
	}
	session.setAttribute("사용자이름", user.getName());
	session.setAttribute("사용자번호", user.getNo());
	session.setAttribute("로그인여부", "Yes");
	
	response.sendRedirect("/model1/common/main.jsp");
	
%>