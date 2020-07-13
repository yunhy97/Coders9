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
  <style type="text/css">
	.field-error {
		border: 1px solid red;
	}
  </style>
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
				<form method="post" action="log/login.jsp">
					<div class="card border-info mb-3 p-2"  style="width: 500px;">
					  <div class="card-body text-info">
					    <h5 class="card-title">LOGIN</h5>
					    <p class="card-text">Please Sign in or Sign up.</p>
					    <div class="form-group">
							<label for="user-id">ID</label>
							<input type="text" class="form-control" name="userid" id="user-id" onchange="enterInfo(event)"/>
							<div id="idInfo">
								<small>Please enter your ID.</small>
							</div>
						</div>
						<div class="form-group">
							<label for="user-pwd">Password</label>
							<input type="password" class="form-control" name="userpwd" id="user-pwd" onchange="enterInfo(event)"/>
							<div id="pwdInfo">
								<small>Please enter your Password.</small>
							</div>
						</div>
						<div class="text-right mt-4">
							<button type="submit" class="btn btn-info btn-block">SIGN IN</button>
							<a class="btn btn-secondary btn-block" href="log/signupform.jsp">SIGN UP</a>
						</div>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function enterInfo(event) {
		event.preventDefault();
		var id = document.getElementById('user-id').value;
		if(id == ''){
			document.getElementById('idInfo').style.display = 'block';
		} else {
			document.getElementById('idInfo').style.display = 'none';
		}
		
		var pwd = document.getElementById('user-pwd').value;
		if(pwd == '') {
			document.getElementById('pwdInfo').style.display = 'block';
		} else {
			document.getElementById('pwdInfo').style.display = 'none';
		}
	}
	function checkField(event) {
		clearErrorField();
		var idField = document.querySelector("input[name=userid]");
		var pwdField = document.querySelector("input[name=userpwd]");
		
		var isPassed = true;
		if(!idField.value) {
			idField.classList.add("field-error");
			isPassed = false;
		}
		if(!pwdField.value) {
			pwdField.classList.add("field-error");
			isPassed = false;
		}
		
		if(!isPassed){
			event.preventDefault();
		}
	}
	
	function clearErrorField() {
		var fields = document.querySelectorAll(".form-group input");
		for(var i=0;i<fields.length;i++) {
			var input = fields[i];
			input.classList.remove('field-error');
		}
		
	}
</script>
</body>
</html>
