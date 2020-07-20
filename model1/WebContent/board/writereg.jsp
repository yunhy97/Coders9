<%@page import="com.model1.dto.BoardDto"%>
<%@page import="com.model1.dao.BoardDao"%>
<%@page import="com.model1.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String type = request.getParameter("boardtype");
	String title = request.getParameter("boardtitle");
	String content = request.getParameter("summary");
	
	Board board = new Board();
	board.setUserNo(loginUserNo);
	board.setType(type);
	board.setTitle(title);
	board.setContent(content);
	
	if(board == null) {
		response.sendRedirect("write.jsp?error=empty");
		return;
	}
	
	BoardDao boardDao = new BoardDao();
	boardDao.insertBoard(board);
	
	response.sendRedirect("boardmain.jsp");
	
%>
