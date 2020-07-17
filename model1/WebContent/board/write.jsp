<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
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
	<div class="row">
		<div class="col-12 mt-0">
			<form method="post" action="writereg.jsp">
				<div class="card border-dark mb-3" style="width: 100%">
				  
				  <div class="card-body text-dark">
					    
					    <div class="form-group">
							<label for="userId" class="font-weight-bold">ID</label>
							<p class="form-control" >id</p>
						</div>
						
						<div class="form-group">
							<label for="user-pwd" class="font-weight-bold">Type</label>
							<input type="password" class="form-control" name="userpwd" id="pwd" onchange="isSame()" onclick="pwdInfoBox()" onsubmit="checkField(event)"  onkeyup="pwdcorrect()"/>
						</div>
						<div class="form-group">
							<label for="user-pwd-confirm" class="font-weight-bold">Title</label>
							<input type="password" class="form-control" name="userpwdconfirm" id="pwdconfirm" onchange="isSame()" onclick="pwdInfoBox()" onsubmit="checkField(event)"/>
							<div id="same"></div>
							
						</div>
						<div class="form-group">
							<label for="user-email" class="font-weight-bold">Content</label>
							<textarea class="form-control" rows="5" cols="40" name="summary"></textarea>
						</div>
						
						<div class="text-right mt-4">
							<button type="submit" class="btn btn-dark btn-lg">COMPLETED</button>
						</div>
					  </div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>