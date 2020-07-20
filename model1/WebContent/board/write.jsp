<%@page import="com.model1.vo.User"%>
<%@page import="com.model1.dao.UserDao"%>
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
		<div class="col-12">
			<div class="jumbotron mt-4 bg-white" style="height: 200px;">
			  <h1 class="display-4 text-dark font-weight-bold">Coders9</h1>
			  <p class="lead text-dark">This is a free board using model1. Feel free to enter and post.</p>
			</div>
		</div>
	</div>
	
	<%
		UserDao userDao = new UserDao();
		User user = userDao.getUserByNo(loginUserNo);
		String error = request.getParameter("error");	
	%>
	
	<div class="row">
		<div class="col-12 mt-0">
			<form method="post" action="writereg.jsp">
				<div class="card border-dark mb-3" style="width: 100%">
				  
				  <div class="card-body text-dark">
					    
					    <%
							if("empty".equals(error)) {
						%>
						<div class="alert alert-danger">
							<strong>오류!</strong> 정보를 선택 또는 입력하세요.
						</div>
						<%
							}
						%>
					    
					    <div class="form-group">
							<label for="userId" class="font-weight-bold">ID</label>
							<input type="text" class="form-control" name="userid" id="userId" value=<%=user.getId() %> disabled/>
						</div>
						
						<div class="form-group">
							<label for="boardType" class="font-weight-bold">Type</label>

							<select class="custom-select mr-sm-2" name="boardtype" id="boardType">
					        	<option selected>select</option>
					        	<option value="출석">출석</option>
					        	<option value="질문">질문</option>
					        	<option value="공부">공부</option>
					        	<option value="기타">기타</option>
					      	</select>
						
						</div>
						<div class="form-group">
							<label for="boardTitle" class="font-weight-bold">Title</label>
							<input type="text" class="form-control" name="boardtitle" id="boardTitle"/>
						</div>
						<div class="form-group">
							<label for="boardContent" class="font-weight-bold">Content</label>
							<textarea class="form-control" rows="5" cols="40" name="summary" id="boardContent"></textarea>
						</div>
						
						<div class="text-right mt-4">
							<button type="submit" class="btn btn-dark btn-lg" onclick="alertcomplete(event)">COMPLETED</button>
						</div>
					  </div>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
function alertcomplete(event) {
	if(confirm('등록하시겠습니까?')){
	
	} else {
		event.preventDefault();
	}
}
</script>
</body>
</html>
