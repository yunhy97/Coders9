<%@page import="com.model1.util.NumberUtil"%>
<%@page import="com.model1.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@page import="com.model1.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인체크 -->
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Coders9</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
	String position = "board";
%>
<%@include file="../common/nav.jsp" %>
<%
	BoardDao boardDao = new BoardDao();
	List<BoardDto> boards = boardDao.getAllBoard();
	
	int rowsPerPage = 5;
	int pageNo = NumberUtil.stringToInt(request.getParameter("page"), 1);
	int beginRowNumber = (pageNo - 1)*rowsPerPage + 1;
	int endRowNumber = pageNo*rowsPerPage;
	
	List<BoardDto> dtos = boardDao.getAllRange(beginRowNumber, endRowNumber);
	
%>
<div class="container">	
	<div class="row">
		<div class="col-12">
			<div class="jumbotron mt-4 bg-white" style="height: 200px;">
			  <h1 class="display-4 text-dark font-weight-bold">Coders9</h1>
			  <p class="lead text-dark">This is a free board using model1. Feel free to enter and post.</p>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-12">
			<table class="table table-hover table-striped" id="board1-table" >
			  <thead>
			    <tr>
			      <th scope="col">No</th>
			      <th scope="col">Title</th>
			      <th scope="col">Writer</th>
			      <th scope="col">Hit</th>
			      <th scope="col">Date</th>
			    </tr>
			  </thead>
			  <tbody>
			 	 <%
			 		if(dtos.isEmpty()){
			 	%>
		 		<tr>
					<td class="text-center" colspan="5">게시글이 없습니다.</td>
				</tr>
			 	<%		
			 		} else {
			 			int index = (pageNo-1)*10+1;
			 		
			 	 
			  			for(BoardDto board : boards){
			  	%>
			    <tr>
			      <td scope="row"><%=index++ %></td>
			      <td><a href="/model1/board/detail.jsp?boardno=<%=board.getNo() %>" class="text-info font-weight-bold"><%=board.getTitle() %></a></td>
			      <td><%=board.getUserId() %></td>
			      <td><%=board.getHit() %></td>
			      <td><%=board.getRegisteredDate() %></td>
			    </tr>
			    <%
			  		
			  			}
			 		}
			    %>
			  </tbody>
			</table>
		</div>
	</div>
	
					<div class="row">
					<div class="col-12 text-center">
						<!-- 페이지 처리 시작 -->
						<ul class="pagination justify-content-center"
							style="margin: 20px 0;">
				<%
						int pagesPerBlock = 5;
						int rows = boardDao.getAllBoard().size();
						int totalPages = (int) Math.ceil((double)rows/rowsPerPage);
						int totalBlock = (int) Math.ceil((double) totalPages/pagesPerBlock);
						int currentBlock = (int) Math.ceil((double) pageNo/pagesPerBlock);
						int beginPageNo = (currentBlock-1)*pagesPerBlock+1;
						int endPageNo = currentBlock*pagesPerBlock;
						if(pageNo > 1) {
				%>
							<li class="page-item "><a class="page-link" href="boardmain.jsp?page=<%=pageNo - 1%>">이전</a></li>
				<%
						}
				%>
				<%
						for(int num=beginPageNo; num <=endPageNo; num++) {
							if(endPageNo > totalBlock) {
								endPageNo = totalPages;
							}
				%>
							<li class="page-item <%=pageNo == num ? " active" : ""%> "><a class="page-link bg-info" href="boardmain.jsp?page=<%=num%>"><%=num%></a></li>
				<%
						}
				%>
				<%
						if(pageNo < totalPages) {
				%>
							<li class="page-item"><a class="page-link" href="questionform.jsp?page=<%=pageNo + 1%>">다음</a></li>
				<%
						}
				%>
						</ul>
						<!-- 페이지 처리 끝 -->
					</div>
				</div>
	
	
	<div class="row">
		<div class="col-12">
			<div class="text-right">
				<a class="btn btn-dark" href="/model1/board/write.jsp" role="button">Write</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>
