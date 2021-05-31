<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>회원관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- index 입장에서의 파일첨부-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link href="css/starter-template.css" rel="stylesheet">
<!-- 스크립트 순서 중요함   -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<script>
$(function(){
	$('.nav-item a').filter(function(){
		return this.href==location.href
		}).parent().addClass('active').siblings().removeClass('active');
});
</script>
</head>
<body>
    <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="index.jsp">
        	<img src="img/icons8-launch-box-48.png">
        </a>

        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/joinForm.jsp">Register</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="view/loginForm.jsp">Login</a>
            </li>
           </ul>       
        </div>
      </nav>
      <main role="main" class="container">
		<div id="carousel" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carousel" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel" data-slide-to="1"></li>
		    <li data-target="#carousel" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="img/cheese.jpg" alt="First slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="img/cup.jpg" alt="Second slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="img/watermelon.jpg" alt="Third slide">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</main>
</body>
</html>
