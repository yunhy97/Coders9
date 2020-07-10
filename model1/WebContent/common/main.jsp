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
  	img {
   	 	opacity: 0.4;
   	 	filter: alpha(opacity=40); /* For IE8 and earlier */
	}

	img:hover {
    	opacity: 1.0;
    	filter: alpha(opacity=100); /* For IE8 and earlier */
	}
  </style>
</head>

<body class="bg-dark text-white">
<%@include file="../common/nav.jsp" %>
<div class="container">	
	<div class="row">
		<div class="col-12">
			<div class="jumbotron" style="background:none;">
			  <h1 class="display-4 text-info font-weight-bold">Coders9</h1>
			  <p style="text-align: center;"><img alt="게시판" src="/model1/resources/img/board.jpg" width="100%"></p>
			  <p class="lead">This is a free board using model1. Feel free to enter and post.</p>
			  <hr class="my-4" style="background-color: white;">
			  <p>Click the button below to go to the board list screen</p>
			  <a class="btn btn-info btn-lg" href="/model1/board/boardmain.jsp" role="button">Board</a>
			</div>
		</div>
	</div>
	
	
</div>
</body>
</html>