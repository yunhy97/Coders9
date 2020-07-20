<%@page import="com.model1.dao.ReplyDao"%>
<%@page import="com.model1.util.NumberUtil"%>
<%@page import="com.model1.vo.Reply"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int boardNo = NumberUtil.stringToInt(request.getParameter("boardnum"));
	String comment = request.getParameter("replycomment");
	
	Reply reply = new Reply();
	reply.setBoardNo(boardNo);
	reply.setContent(comment);
	reply.setUserNo(loginUserNo);
	
	if(reply == null) {
		response.sendRedirect("detail.jsp?error=replyempty");
		return;
	}
	
	ReplyDao replyDao = new ReplyDao();
	replyDao.insertReply(reply);
	
	response.sendRedirect("detail.jsp");
%>
