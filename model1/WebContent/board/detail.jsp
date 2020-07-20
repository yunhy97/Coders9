<%@page import="com.model1.dto.ReplyDto"%>
<%@page import="com.model1.dao.ReplyDao"%>
<%@page import="java.util.List"%>
<%@page import="com.model1.vo.User"%>
<%@page import="com.model1.dao.UserDao"%>
<%@page import="com.model1.dto.BoardDto"%>
<%@page import="com.model1.dao.BoardDao"%>
<%@page import="com.model1.util.NumberUtil"%>
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
<body>
<%
	String position = "board";
%>
<%@include file="../common/nav.jsp" %>
<div class="container">	
	<div class="row">
		<div class="col-12 mt-5">
			<%
				int boardNo = NumberUtil.stringToInt(request.getParameter("boardno"));
				BoardDao boardDao = new BoardDao();
				BoardDto boardDto = boardDao.getDetailByNo(boardNo);
			%>
			<h1 class="text-info">Detail</h1>
			
			<table class="table" style="width: 100%;">
				<tbody>
					<tr>
						<th>No.</th>
						<td><%=boardNo %></td>
						<th>Id.</th>
						<td><%=boardDto.getUserId() %></td>
					</tr>
					<tr>
						<th>Type.</th>
						<td><%=boardDto.getType() %></td>
						<th>Hit.</th>
						<td><%=boardDto.getHit() %></td>
					</tr>
					<tr>
						<th>Date.</th>
						<td colspan="3"><%=boardDto.getRegisteredDate() %></td>
					</tr>
					<tr>
						<th>Title.</th>
						<td colspan="3"><%=boardDto.getTitle()%></td>
					</tr>
					<tr>
						<th>Content.</th>
						<td colspan="3"  class="pb-0"><textarea class="form-control" rows="4" cols="40" disabled><%=boardDto.getContent() %></textarea></td>
					</tr>
				</tbody>
			</table>
			
			<hr class="my-3" style="background-color: black;"/>
			
			<!-- reply show 시작 미완 -->
		  	<%
		  		UserDao userDao = new UserDao();
		  		User user = userDao.getUserByNo(loginUserNo);
				ReplyDao replyDao = new ReplyDao();
				List<ReplyDto> replys =  replyDao.getReplyByBoardNo(boardNo);
			%>
			<div class="row">
				<div class="col-12 mt-3">
					<h1 class="text-info">Reply</h1>
					
					<h4 style="display: inline-block;">Show</h4>
					<div style="display: inline-block; float: right;">
						<button class="btn btn-info btn-sm" onclick="addBtn()">Add</button>
					</div>
					<table class="table" style="width: 100%;">
						<%
							for(ReplyDto dto : replys) {
						%>
						<tbody>
							<tr>
								<th>Id</th>
								<td><%=dto.getUserId() %></td>
								<th>Date</th>
								<td><%=dto.getRegisteredDate() %></td>
							</tr>
							<tr>
								<th>Content</th>
								<td colspan="3"><%=dto.getContent() %></td>
							</tr>
						</tbody>
						<%
							}
						%>
					</table>
					
					<!-- reply add 시작 미완 -->
					<div id="addbutton" style="display: none;">
						<h4 style="display: inline-block;">add</h4>
						<div style="display: inline-block; float: right;">
							<button type="button" class="close" aria-label="Close" onclick="closeBtn()">
							  <span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form method="post" action="replyreg.jsp">
							<input type="hidden" name="boardno" value="<%=boardNo %>" />
							<table class="table" style="width: 100%;">
								<tbody>
									
									<tr>
										<th>Id</th>
										<td><%=user.getId() %></td>
									</tr>
									<tr>
										<th>Comment</th>
										<td colspan="3"><textarea class="form-control" rows="3" cols="40" name="replycomment"></textarea></td>
									</tr>
								</tbody>
							</table>
							<div class="row">
								<div class="col-12 text-right mt-0 mb-3">
									<button type="submit" class="btn btn-dark btn-sm">Create</button>
								</div>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function addBtn() {
		document.getElementById('addbutton').style.display = 'block';
	}
	function closeBtn() {
		document.getElementById('addbutton').style.display = 'none';
	}
</script>
</body>
</html>
