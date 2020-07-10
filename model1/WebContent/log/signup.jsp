<%@page import="com.model1.dao.UserDao"%>
<%@page import="com.model1.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("username");
	String id = request.getParameter("userid");
	String password = request.getParameter("userpwd");
	String email = request.getParameter("useremail");
	String gender = request.getParameter("usergender");
	String tel = request.getParameter("usertel");
	
	User user = new User();
	user.setName(name);
	user.setId(id);
	user.setPassword(password);
	user.setEmail(email);
	user.setGender(gender);
	user.setTel(tel);
	
	UserDao userDao = new UserDao();
	User savedUser = userDao.getUserById(id);	
	if(savedUser != null){
		response.sendRedirect("signupform.jsp?error=notok");
		return;
	}
	userDao.insertUser(user);
	
	response.sendRedirect("/model1/loginhome.jsp");
%>