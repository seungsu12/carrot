<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var ="cpath">${pageContext.request.contextPath}</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css?v=2" rel="stylesheet" type="text/css">
<title>회원가입</title>

<style>
.sign_title a{
	text-decoration : none;
	color : black;
}
.sign_wrapper{

	width: 60%;
	margin : 50px auto 0 auto;
	display : flex;
	flex-direction:column;
	align-items: center;
	
	
}
.sign_title{
	
	margin : 25px auto 20px auto;	
}
.sign_title a{
	font-size: 69px;
	
}


.sign_box {
	min-width:560px;
	display: flex;
	flex-direction:column;
}
.sign_box2{
	min-width:560px;
	display: flex;
	flex-direction:column;
}
.sign_box2 input{
	width :165px;
	height: 45px;
	padding :4px;
	font-size :16px;
}

.sign_box input{
    margin: 5px 0 10px 0;
    height: 45px;
    font-size:27px;
    padding: 4px;
}

#sign_gender {
	margin : 5px 0 10px 0;
	font-size: 16px;
	height :45px;
}
.singup_body{
	background: #F2F2F2;
}
.sign_birth_wrapper{
	display: flex;
	justify-content: space-between;
	
}
#sign_month{
	width: 165px;
	font-size : 16px;
	
}
#sign_submit{
	background : #FAAC58;
	margin-top : 30px;
}

#sign_submit :hover{
	background :#F8ECE0;
}
</style>
<script>

</script>
</head>

<body class="singup_body">

	<div class="sign_wrapper">
		<div class="sign_title">
			<a href="${cpath }/main.jsp">Airshop</a>
		</div>
		
		<form action="joining.jsp" method="post">
		
		<div class="sign_input_wrapper">
			
			<div class="sign_box">
				<span>아이디</span>
				
				<input type="text" name="id">
				
			</div>
			<div class="sign_box">
				<span>비밀번호</span>
			
					<input type="password" name="pwd">
				
			</div>
			<div class="sign_box">
				<span>
					비밀번호 재확인
				</span>
				<input type="password" name="pwd2" id="sign_pwd2">
			</div>
			<div class="sign_box">
				<span>
					이름
				</span>
				<input type="text" name ="name" id="sign_name">
			</div>
			<div class="sign_box">
				<span>성별</span>
				<select id="sign_gender" name="sign_gener">
					<option value="남자">남자</option>
					<option value="여자">여자</option>
				</select>
			</div>
			<div class="sign_box">
			 	<span>
			 		본인 확인 이메일
			 	</span>
				<input type="email" name="sign_email">
			</div>
			<div class="sign_box">
				<span>
					전화번호
				</span>
				<input type="text" placeholder="010-****-****" name="phone_num">
			</div>
			<div class="sign_box2">
				<span>
					생년월일
				</span>
				<div class="sign_birth_wrapper">
				<input id="sign_year"type="text" name="birthyy" placeholder="년(4자)">
				<select id="sign_month" name="birthmm">
					
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<input type="number" name="birthdd" placeholder="일">
				</div>
			</div>
			
			<div class="sign_box">
				<input type="submit" id="sign_submit" value="가입하기">
			</div>
		</div>
		
		</form>
	</div>

</body>
</html> 