<%@page import="com.carrot.beans.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	
	.deliver_title{
		margin: 1rem 0 1rem 0;
    	font-size: 1.5rem;
	}
	.deliver_content_first{
		display :flex;
		justify-content : space-between;
		margin-bottom :1rem;
	}
	.deliver_content_first input{
		width: 100%;
		height: 3rem;
		font-size : 1rem;
		padding : 1rem;
		margin-top :1rem;
		margin-bottom : 1rem;
	}
	.deliver_content_addr{
		display:flex;
		margin-top : 1rem;
		margin-bottom :1rem;
	}
	.deliver_content_addr input{
		height: 2.5rem;
    	width: 90%;
	}
	.deliver_content_addr button{
		height: 2.5rem;
		width : 10%;
	}
	.deliver_content_firstblock{
		width :45%;
	}
	.deliver_content_firstblock div{
		width :100%;
	}
	
	.deliver_extra_addr_wrapper{
		width :100%;
	}
	.deliver_extra_addr_wrapper input{
		width: 100%;
		height: 2.5rem;
    	font-size: 1rem;
    	padding: 1rem;
	}
	.addr_option_wrapper{
		padding-top :2rem;
		width:100%;
		margin : 1rem 0 1rem 0;
	}
	.addr_option_wrapper select{
		width: 100%;
		height: 2.5rem;
    	font-size: 1rem;
    	margin-bottom :1rem;
    	
	}
	#hide_input{
		display : none;
		margin-top : 1rem;
		width: 100%;
		height: 2.5rem;
    	font-size: 1rem;
    	padding: 1rem;
	}
	.order_form_second_button{
		font-size : 1.1rem;
		position : relative;
		top : 5.6rem;
		width : 100%;
		height : 3.2rem;
		background : black;
		color : white;
		text-align : center;
		
	}
	
	.order_member_info{
		font-size : 0.8rem;
		display: flex;
		align-items : center;
		justify-content: end;
		height:3rem;
		border-top :1px solid grey;
		border-bottom :1px solid grey;
		margin-top : 1rem;
	}
	.order_member_info div{
		margin-left: 0.5rem;
	}
	.order_member_info2{
		display :none;
		padding-left :1rem;
		padding-top :1rem;
		padding-bottom :1rem;
		margin-top :1rem;
		border-top: 1px solid grey;
   		border-bottom: 1px solid grey;
		
	}
	.order_member_info2 input{
		padding : 0.5rem;
		width : 14rem;
	}
	.order_member_correction_button{
		margin-left : 2rem;
		height :100%;
		width : 5rem;
		font-size : 1rem;
	}
	.order_member_input_wrapper{
		display: flex;
		flex-direction :column;
		row-gap : 0.4rem;
	}
	.order_member_info2 i{
		float : right
	}
	.order_member_info2 div:nth-child(3){
		align-self:center;
		width: 100%;
	}
	
</style>

	<%
		/* MemberVO vo = (MemberVO)session.getAttribute("memberVO"); */
		/* request.setAttribute("memberVO", vo); */
	%>
	<script>
		
	</script>
	<div class="order_form_second_wrapper">
		<div class="order_member_info long">
			<div class="order_member_email">${memberVO.email }</div>
			<div class="order_member_phone">${memberVO.phone_num }</div>
			<div class="order_member_open_button"><i class="fas fa-plus open_info"></i></div>
		</div>
		<div class="order_member_info2 long">
			<div class="order_member_input_wrapper">
				<div><input id="second_member_email" type="text" value="${memberVO.email }"></div>
				<div><input id="second_member_phone" type="text" value="${memberVO.phone_num }"></div>
			</div>
			<div><button class="order_member_correction_button">수정</button></div>
			<div class="order_member_close_button"><i class="fas fa-minus close_info"></i></div>
		</div>
		<div class="deliver_title">
			배송지 정보
		</div>
		<form action="${pageContext.request.contextPath }/orderform" method="post">
			<input type="hidden" name="orderform_type" value="2">
		
			<div class="deliver_content_first">
				<div class="deliver_content_firstblock">
					<span>받으시는 분</span>
					<div >
						<input type="text" placeholder="이름">
					</div>
				</div>
				<div class="deliver_content_firstblock">
					<span>연락처</span>
					<div>
						<input type="text" placeholder="-없이 입력">
					</div>
				</div>
				
			</div>
			<div class="deliver_content_second">
				<span>배송주소</span>
				<div class="deliver_content_addr">
					<input type="text" id="order_address">
					<button onclick="sample4_execDaumPostcode()">검색</button>
				</div>
			</div>
			<div class="deliver_extra_addr_wrapper">
				<input type="text" id="detail_delivery" placeholder="나머지 주소 입력">
			</div>
			
			<div class="addr_option_wrapper">
				<select name="" id="direct_input_button" onchange='direct_input_event(this.value)'>
					<option value="" selected disabled>배송메모를 선택하세요</option>
					<option value="contact">배송시 연락 부탁드립니다.</option>
					<option value="door">문 앞에두어주세요</option>
					<option  id="" value="direct">직접입력</option>
					
				</select>
				<input type="text" id="hide_input" placeholder="배송메모를 입력하여 주세요.">
			</div>
			<div class="long">
				<button class="order_form_second_button" type="submit">다음 단계 진행</button>
			</div>

		</form>
	</div>
	<script>
	const direct_input_button = document.getElementById('direct_input_button');
	const hide_input = document.getElementById('hide_input');

	function direct_input_event(value){	
		if(value == 'direct'){
		
			hide_input.style.display = 'block';
		}
		else{
			hide_input.style.display = 'none';
			hide_input.innerHTML ='';
		} 
	}
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                document.getElementById("order_address").value = roadAddr;

            } 
        }).open();
    }
	// 멤버 이메일,휴대폰 정보 디스플레이
	/* const origin_wrap = document.querySelector('.order_member_info');
	const second_wrap = document.querySelector('.order_member_info2');
	
	document.querySelector('.open_info').addEventListener('click',() =>{
		origin_wrap.style.display = 'none';
		second_wrap.style.display = 'flex';
	});
	
	document.querySelector('.close_info').addEventListener('click', () =>{
		origin_wrap.style.display = 'flex';
		second_wrap.style.display = 'none';
	}); */
	
	// 멤버 정보 수정 비동기 통신
	 function correction(){
		const email = document.getElementById('second_member_email');
		const phone = document.getElementById('second_member_phone');
		const path = '${pageContext.request.contextPath}'+'/orderform';
		const info = {email : email, phone : phone};
		 fetch(path,{
			method :'put',
			body: JSON.stringify(info)
		})
		.then(res){
			 if(res.status==200){
				 
				 
			 }
		 };
		
	} 
	//member_info open,close
	
	document.querySelector('.order_member_open_button').addEventListener('click', ()=>{
			document.querySelector('.order_member_info').style.display = 'none';
			document.querySelector('.order_member_info2').style.display ='flex';
		});
 	document.querySelector('.order_member_close_button').addEventListener('click',()=>{
 		document.querySelector('.order_member_info').style.display = 'flex';
		document.querySelector('.order_member_info2').style.display ='none';	 		
 	})

	</script>
</html>