<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인체크 -->
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
	String position = "my";
%>
<%@include file="../common/nav.jsp" %>
<div class="container">	
	<div class="body">
		<div class="row">
			<div class="col-12 text-center mt-5">
				<h1 class="text-info"><strong>Coders9</strong></h1>
				<h2 class="text-dark">Modify Information</h2>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-12 d-flex justify-content-center">
				<form method="post" action="#">
					<div class="card border-dark mb-3 p-2" style="width: 500px;">
					  <div class="card-body text-dark">
					    <h5 class="card-title">Modify</h5>
					    <p class="card-text">Please modify the information.</p>
					   
					    <div class="form-group">
							<label for="user-name">Name</label>
							<input type="text" class="form-control" name="username" id="user-name" disabled/>
						</div>
						
						<div class="form-group">
							<label for="user-id">ID</label>
							<input type="text" class="form-control" name="userid" id="user-id" disabled/>
						</div>
						
						<div class="form-group">
							<label for="user-pwd">Password</label>
							<input type="password" class="form-control" name="userpwd" id="pwd" onchange="isSame()" onclick="pwdInfoBox()" onsubmit="checkField(event)"  onkeyup="pwdcorrect()"/>
						</div>
						<div class="form-group">
							<label for="user-pwd-confirm">Password confirm</label>
							<input type="password" class="form-control" name="userpwdconfirm" id="pwdconfirm" onchange="isSame()" onclick="pwdInfoBox()" onsubmit="checkField(event)"/>
							<div id="same"></div>
							
							<div id="pwdinfo" class="mt-2" style="display: none;" >
								<p><strong>Password must include the following:</strong></p>
								<ul>
									<li><span id="charlength">passUse between 8 and 20 characters</span></li>
									<li><span id="charone">failInclude at least one letter</span></li>
									<li><span id="charspecial">Does not contain blank spaces or the following special characters: < > " \ . ,</span></li>
									<li><span id="charmatch">Passwords match</span></li>
								</ul>
							</div>
						</div>
						
						<div class="form-group">
							<label for="user-email">Email</label>
							<input type="email" class="form-control" name="useremail" id="user-email" onsubmit="checkField(event)"/>
						</div>
						<div class="form-group">
							<label for="user-tel">Phone Number</label>
							<input type="tel" class="form-control" name="usertel" id="user-tel" maxlength="13" onsubmit="checkField(event)" />
						</div>
						<div class="text-right mt-4">
							<button type="submit" class="btn btn-dark btn-lg btn-block">MODIFY ACCOUNT</button>
						</div>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>