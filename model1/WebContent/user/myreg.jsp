<%@page import="com.model1.dao.UserDao"%>
<%@page import="com.model1.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String password = request.getParameter("userpwd");
	String tel = request.getParameter("usertel");
	String email = request.getParameter("useremail");
	
	UserDao userDao = new UserDao();
	User userr = userDao.getUserByNo(loginUserNo);
	
	User user = new User();
	user.setNo(userr.getNo());
	user.setId(userr.getId());
	user.setName(userr.getName());
	user.setGender(userr.getGender());
	user.setPassword(password);
	user.setTel(tel);
	user.setEmail(email);
	
	userDao.updateModifyUser(user);
	
	response.sendRedirect("/model1/common/main.jsp");
%>
