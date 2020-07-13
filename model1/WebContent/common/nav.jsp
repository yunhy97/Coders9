<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">	
	<div class="row"><!-- 내비바 -->
		<div class="col-12 mt-1">
			<nav class="navbar navbar-expand-lg navbar-light bg-light border border-info">
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <a class="navbar-brand text-info font-weight-bold" href="/model1/common/main.jsp">Coders9</a>
			
			  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			      <li class="nav-item active">
			        <a class="nav-link text-info font-weight-bold" href="#">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="#">Board</a>
			      </li>
			    </ul>
			    <form class="form-inline my-2 my-lg-0">
			     	 <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			     	  <%
			     	  	if("Yes".equals(loginYn)) {
			     	  %>
				      <li class="nav-item ">
				        <a class="nav-link text-info" href="#">My <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item ">
				        <a class="nav-link" href="#">Logout <span class="sr-only">(current)</span></a>
				      </li>
				      <%
			     	  	}
				      %>
			      	 </ul>
			    </form>
			  </div>
			</nav>
		</div>
	</div>
</div>