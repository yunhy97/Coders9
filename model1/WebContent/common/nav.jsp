<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="">	
	<div class="row"><!-- 내비바 -->
		<div class="col-12 mt-1">
			<nav class="navbar navbar-expand-lg navbar-dark bg-info">
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  
			  <a class="navbar-brand font-weight-bold ml-5" href="/model1/common/main.jsp">Coders9</a>
			
			  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			      <li class="nav-item <%="home".equals(position) ? "active" : "" %>">
			        <a class="nav-link <%="home".equals(position) ? "font-weight-bold" : "" %>" href="/model1/common/main.jsp">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item <%="board".equals(position) ? "active" : "" %>">
			        <a class="nav-link <%="board".equals(position) ? "font-weight-bold" : "" %>" href="/model1/board/boardmain.jsp">Board</a>
			      </li>
			    </ul>
			    <form class="form-inline my-2 my-lg-0">
			     	 <ul class="navbar-nav mr-5 mt-2 mt-lg-0">
			     	  
				      <li class="nav-item small <%="my".equals(position) ? "active" : "" %>">
				        <a class="nav-link" href="/model1/user/my.jsp">My <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item small">
				        <a class="nav-link" href="/model1/log/logout.jsp">Logout <span class="sr-only">(current)</span></a>
				      </li>
				     
			      	 </ul>
			      	
			    </form>
			  </div>
			</nav>
		</div>
	</div>
</div>