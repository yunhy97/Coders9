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
<body class="bg-dark text-white">
<div class="container">	
	<div class="body">
		<div class="row">
			<div class="col-12 text-center mt-5">
				<h1 class="text-info"><strong>Coders9</strong></h1>
				<h2>model1 board</h2>
				<p>hayoung</p>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-12 d-flex justify-content-center">
				<form method="post" action="/log/signup.jsp">
					<div class="card border-info mb-3 p-2"  style="width: 500px;">
					  <div class="card-body text-info">
					    <h5 class="card-title">SIGN UP</h5>
					    <p class="card-text">Please enter the information.</p>
					    <div class="form-group">
							<label for="user-name">Name</label>
							<input type="text" class="form-control" name="username" id="user-name"/>
						</div>
						<div class="form-group">
							<label for="user-id">ID</label>
							<input type="text" class="form-control" name="userid" id="user-id"/>
						</div>
						<div class="form-group">
							<label for="user-pwd">Password</label>
							<input type="password" class="form-control" name="userpwd" id="user-pwd"/>
							<p class="small"></p>
						</div>
						<div class="form-group">
							<label for="user-pwd-confirm">Password confirm</label>
							<input type="password" class="form-control" name="userpwd" id="user-pwd-confirm"/>
							<div class="mt-2" style="display: none;">
								<p><strong>Password must include the following:</strong></p>
								<ul>
									<li>passUse between 8 and 20 characters</li>
									<li>failInclude at least one letter</li>
									<li>Does not contain blank spaces or the following special characters: < > " \ . ,</li>
									<li>Passwords match</li>
								</ul>
							</div>
						</div>
						<div class="form-group">
							<label for="user-email">Email</label>
							<input type="email" class="form-control" name="useremail" id="user-email"/>
						</div>
						<div class="form-group">
							<label>Gender</label>
							<div>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="usergender" id="gender-male" value="M" checked>
									<label for="gender-male">Male</label>
  								</div>
  								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="usergender" id="gender-female" value="F">
									<label for="gender-female">Female</label>
  								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="user-tel">Phone Number</label>
							<input type="tel" class="form-control" name="usertel" id="user-tel"/>
						</div>
						<div class="text-right mt-4">
							<button type="submit" class="btn btn-info btn-lg btn-block">CREATE ACCOUNT</button>
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