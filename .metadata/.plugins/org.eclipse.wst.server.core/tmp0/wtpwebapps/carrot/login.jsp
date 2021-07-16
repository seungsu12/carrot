<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="css/style.css?v=7" rel="stylesheet" type="text/css">
</head>
<style>
*{
	box-sizing:border-box;
}
.login_title a{
	text-decoration : none;
	color : black;
}
.login_wrapper{
	display: flex;
	flex-direction : column;
	align-items: center;
	margin : 0 auto 0 auto;
	
}
.login_title{
	font-size :68px;
	margin : 100px 0 60px 0;
}
.login_box {
	margin-bottom : 10px;
	width: 420px;
}
.login_box input{
	width: 420px;
	padding:5px;
	height : 45px;
	font-size : 18px;
	
}
.login_hr {
	margin_top : 5px;
}
.login_list{
	display: flex;
    width: 300px;
    align-items: center;
    flex-direction: column;
}
.login_list a {
	text-decoration :none;
	color : grey;
	font-size : 13px;
}
.login_list div span{
	content : "|";
}
.login_hr{
 	margin-top : 20px;
}
.login_list div{
	display :felx;
	justify-content : space-between;
}

</style>
<body>
<!-- login_list '|' 삽입 아직 안함, 버튼 수정 안 -->

	<div class="login_wrapper">
		
		<div class="login_title">
			<a href="main.jsp">Airshop</a>
		</div>
		<form action="logining.jsp" method="post">
		<div class="login_box">
			<input type="text" placeholder="아이디" name="id">
		</div>
		<div class="login_box">
			<input type="password" placeholder="비밀번호" name="pwd">
		</div>
		<div class="login_box">
			<input type="submit" value="로그인" id="login_button">
		</div>
		<div >
			<div>
				<label><input type="checkbox">로그인 상태 유지</label>
			</div>
		</div>
		</form>
		<div class="login_box">
			<hr class="login_hr">
		</div>
		
		<div class="login_list">
			<div>
			<span><a href="#">아이디 찾기</a></span>
			<span><a href="#">비밀번호 찾기</a></span>
			<span><a href="signup.jsp">회원가입</a></span>
			</div>
		</div>
	</div>
</body>
</html>