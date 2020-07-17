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
	.errormessage {
		color: red;
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
				<form method="post" action="signup.jsp">
					<div class="card border-info mb-3 p-2" style="width: 500px;">
					  <div class="card-body text-info">
					    <h5 class="card-title">SIGN UP</h5>
					    <p class="card-text">Please enter the information.</p>
					    <%
					    	String error = request.getParameter("error");
					    %>
					    <div class="form-group">
							<label for="user-name">Name</label>
							<input type="text" class="form-control" name="username" id="user-name" onsubmit="checkField(event)"/>
						</div>
						
						<div class="form-group">
							<label for="user-id">ID</label>
							<input type="text" class="form-control" name="userid" id="user-id" onsubmit="checkField(event)"/>
							<%
								if("notok".equals(error)) {
							%>
							<div id="errormessage">
								<strong>error!</strong>The ID you entered exists.
							</div>
							<%	
								}
							%>
						</div>
						<div class="form-group">
							<label for="pwd">Password</label>
							<input type="password" class="form-control" name="userpwd" id="pwd" onchange="isSame()" onclick="pwdInfoBox()" onsubmit="checkField(event)"  onkeyup="pwdcorrect()"/>
						</div>
						<div class="form-group">
							<label for="pwdconfirm">Password confirm</label>
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
							<input type="tel" class="form-control" name="usertel" id="user-tel" maxlength="13" onsubmit="checkField(event)" />
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
<script type="text/javascript">
	function pwdcorrect() {
		
		var pwd = document.getElementById('pwd').value;
		
		if(pwd.length >=8 && pwd.length <= 20){
			document.getElementById('charlength').style.color = 'navy';
		} else {
			document.getElementById('charlength').style.color = 'red';
		}
		
    	var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
    	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크
    	if(!(pattern_spc.test(pwd)) && !(pattern_kor.test(pwd)) ){
    		document.getElementById('charspecial').style.color = 'navy';
    	}else{
    		document.getElementById('charspecial').style.color = 'red';
    	}
    	var pattern_eng = /[a-zA-Z]/;
    	if(pattern_eng.test(pwd)){
    		document.getElementById('charone').style.color = 'navy';
    	} else {
    		document.getElementById('charone').style.color = 'red';
    	}
	}

	function isSame() {
		var pwd = document.getElementById('pwd').value;
		var confirmPwd = document.getElementById('pwdconfirm').value;
	
		if(pwd != '' && confirmPwd !=''){
			if(pwd == confirmPwd) {
				document.getElementById('same').innerHTML = "The passwords match.";
				document.getElementById('same').style.color = 'navy';
				document.getElementById('charmatch').style.color = 'navy';
			} else {
				document.getElementById('same').innerHTML = "The passwords do not match.";
				document.getElementById('same').style.color = 'red';
				document.getElementById('charmatch').style.color = 'red';
			}
		}
	}
	
	function pwdInfoBox() {
		document.getElementById('pwdinfo').style.display = 'block';
	}
	
	function checkField(event) {
		clearErrorField();
		var nameField = document.querySelector("input[name=username]");
		var idField = document.querySelector("input[name=userid]");
		var pwdField = document.querySelector("input[name=userpwd]");
		var pwdConfirmField = document.querySelector("input[name=userpwdconfirm]");
		var emailField = document.querySelector("input[name=useremail]");
		var telField = document.querySelector("input[name=usertel]");
		
		var isPassed = true;
		if(!nameField.value) {
			nameField.classList.add('field-error');
			isPassed = false;
		}
		if(!idField.value) {
			idField.classList.add('field-error');
			isPassed = false;
		}
		if(!pwdField.value) {
			pwdField.classList.add('field-error');
			isPassed = false;
		}
		if(!pwdConfirmField.value) {
			pwdConfirmField.classList.add('field-error');
			isPassed = false;
		}
		if(!emailField.value) {
			emailField.classList.add('field-error');
			isPassed = false;
		}
		if(!telField.value) {
			telField.classList.add('field-error');
			isPassed = false;
		}
		
		if(!isPassed) {
			event.preventDefault();
		}
	}
	function clearErrorField() {
		var fields = document.querySelectorAll('.form-group input');
		for(var i=0; i<fields.length;i++) {
			var input = fields[i];
			input.classList.remove('field-error');
		}
	}
	

	var autoHypenPhone = function(str){
	      str = str.replace(/[^0-9]/g, '');
	      var tmp = '';
	      if( str.length < 4){
	          return str;
	      }else if(str.length < 7){
	          tmp += str.substr(0, 3);
	          tmp += '-';
	          tmp += str.substr(3);
	          return tmp;
	      }else if(str.length < 11){
	          tmp += str.substr(0, 3);
	          tmp += '-';
	          tmp += str.substr(3, 3);
	          tmp += '-';
	          tmp += str.substr(6);
	          return tmp;
	      }else{              
	          tmp += str.substr(0, 3);
	          tmp += '-';
	          tmp += str.substr(3, 4);
	          tmp += '-';
	          tmp += str.substr(7);
	          return tmp;
	      }
	  
	      return str;
	}


	var tel = document.getElementById('user-tel');

	tel.onkeyup = function(){
	  console.log(this.value);
	  this.value = autoHypenPhone( this.value ) ;  
	}
</script>
</body>
</html>
