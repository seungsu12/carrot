<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var ="cpath">${pageContext.request.contextPath}</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css?v=7" rel="stylesheet" type="text/css">
<title>회원가입</title>
<style>
.sign_text{
	margin-bottom : 1.2em;
	font-size : 0.8em;
	color :grey;
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
				<label for="sign_id">아이디</label>
				<input type="text" name="id" id="sign_id" autofocus>
			
			</div>
			
			<div class="sign_box">
				<label for="sign_pwd">비밀번호</label>
					<input style="font-size:14px;" type="password" name="pwd" id="sign_pwd" placeholder="한글,영어,특수문자포함 8자리이상">		
					<span class="sign_text" id ="pwd_text"></span>
			</div>
			
			<div class="sign_box">
				<label for="sign_pwd2">비밀번호 재확인</label>
				<input type="password" name="pwd2" id="sign_pwd2">
				<span class="sign_text" id="pwd2_text"></span>
			</div>
			
			<div class="sign_box">
				<label for ="sign_name">이름</label>
				<input type="text" name ="name" id="sign_name">
			</div>
			
			<div class="sign_box">
				<label for="sign_gender">성별</label>
				<select id="sign_gender" name="sign_gener">
					<option value="남자">남자</option>
					<option value="여자">여자</option>
				</select>
			</div>
			
			<div class="sign_box">
			 	<label for="sign_email">본인 확인 이메일</label>
				<input type="email" name="sign_email" id="sign_email">
			</div>
			<div class="sign_box">
				<label for ="sign_phone_num">전화번호</label>
				<input type="text" placeholder="010 - **** - ****" name="phone_num" id="sign_phone_num">
			</div>
			<div class="sign_box2">
				<label>생년월일</label>
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
				<input type="number" name="birthdd" min="1" max="31" placeholder="일">
				</div>
			</div>
			
			<div class="sign_box">
				<input type="submit" id="sign_submit" value="가입하기">
			</div>
		</div>
		
		</form>
	</div>
</body>
<script>
let pwd = document.getElementById('sign_pwd');
let pwd2 = document.getElementById('sign_pwd2');


pwd2.addEventListener('blur',() =>{
	let text = document.getElementById('pwd2_text');
	if(pwd.value === pwd2.value){
		text.innerHTML = '비밀번호가 일치합니다.';
		text.style.color='blue';
	}
	else{
		text.innerHTML = "비밀번호가 일치하지 않습니다.";
		text.style.color ='red';
	}
});
		
pwd.addEventListener('blur',()=>{
	let text = document.getElementById('pwd_text');

	if(!/[!?@#$%^&*():;+-=~{}<>\_\[\]\|\\\,\.\/a-zA-Z0-9]{8,16}$/.test(pwd.value)){
 		
		text.innerHTML ="비밀번호는 영어,한글,특수문자 포함 8~ 16글자입니다.";
 	}
	
	  else{
		text.innerHTML = "비밀번호가 적합합니다.";
	} 
});		
	
</script>
</html> 