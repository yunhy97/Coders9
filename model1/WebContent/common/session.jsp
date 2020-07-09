<%@page import="com.model1.util.NumberUtil"%>
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
	String loginYn = (String)session.getAttribute("로그인여부");

	//오류날 수 있음 오류나면 ""+ 해주기
	int loginUserNo = NumberUtil.stringToInt((String)session.getAttribute("사용자번호"));
	String loginUserName = (String)session.getAttribute("사용자이름");
%>
