<%@page import="com.model1.dao.BoardDao"%>
<%@page import="com.model1.util.NumberUtil"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int boardNo = NumberUtil.stringToInt(request.getParameter("boardno"));
	int pageNo = NumberUtil.stringToInt(request.getParameter("page"));
	
	BoardDao boardDao = new BoardDao();
	// 게시글의 조회수를 변경한다.
	boardDao.updateBoardHit(boardNo);
	
	// 게시글번호에 해당하는 detail.jsp를 재요청 응답을 보낸다.
	response.sendRedirect("detail.jsp?boardno=" + boardNo + "&page=" + pageNo);
%>