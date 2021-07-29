<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link href="https://fonts.googleapis.com/css2?family=Odibee+Sans&display=swap" rel="stylesheet">
<header>
<div id="header_wrap">
	
	<div class="header_item"></div>
	<div class="header_item"></div>
	<div class="header_item">
	
		<div id ="input_wrapper">
			<input id="header_input"type="text" name="search">
			<button id="header_submit" style="">search</button>
		</div>
	</div>
	
	
	<div class="header_item">
		<div>
			<ul>
				<li> <a href="login.jsp" id="header_title_login">로그인</a>
				<li> <a href="signup.jsp">회원가입</a>
				<li> <a href="#">이벤트</a>
			</ul>
		</div>
	</div>
	
	<div class="header_item"></div>
	
	<div class="header_item">
		<a href="main.jsp">AirSHOP</a>
	</div>
	
	<div class="header_item">
		
		<ul>
			<li class="header_navybar"><a href="#">Brand Story</a>
				<ul class="sub_menu">
					<li><div><a href="#">menu1</a></div></li>
					<li><div><a href="#">menu2</a></div></li>
					<li><div><a href="#">menu3</a></div></li>
				</ul>

			</li>
				
			<li class="header_navybar"><a href="products.jsp">PRODUCTS</a></li>
			<li class="header_navybar"><a href="#">SUPPORT</a></li>
		</ul>
	</div>
	
</div>
</header>
