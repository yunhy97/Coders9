<%@page import="com.model1.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@page import="com.model1.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style type="text/css">
	#board1-table:hover tbody tr:hover{
	    
	    color: white;
	    background-color: #17a2b8;
	}
	thead {
		background-color: white;
		color: #17a2b8;
		opacity: 0.8;
   	 	filter: alpha(opacity=40); /* For IE8 and earlier */
	}
</style>
<body class="bg-dark text-white">
<%@include file="../common/nav.jsp" %>
<%
	BoardDao boardDao = new BoardDao();
	List<BoardDto> boards = boardDao.getAllBoard();
%>
<div class="container">	
	<div class="row">
		<div class="col-12">
			<div class="jumbotron" style="background:none;">
			  <h1 class="display-4 text-info font-weight-bold">Coders9</h1>
			  <p class="lead">This is a free board using model1. Feel free to enter and post.</p>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-12">
			<table class="table table-hover text-white" id="board1-table" >
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
			  		for(BoardDto board : boards){
			  	%>
			    <tr>
			      <th scope="row"><%=board.getNo() %></th>
			      <td><a href="#" class="text-white"><%=board.getTitle() %></a></td>
			      <td><%=board.getUserId() %></td>
			      <td><%=board.getHit() %></td>
			      <td><%=board.getRegisteredDate() %></td>
			    </tr>
			    <%
			  		}
			    %>
			  </tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="text-right">
				<a class="btn btn-info" href="#" role="button">Write</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>