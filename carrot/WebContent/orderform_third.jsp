<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>

	.order_form_third_title{
		margin-top : 2rem;
		margin-bottom : 2rem;
	}

	.pay_list{
		margin-top : 3rem;
		display : flex;
		flex-direction : column;
		width : 50%;
	}
	.pay_list div{
		margin-bottom : 2rem;
		border : 1px solid grey;
		width: 70%;
		height: 2.5rem;
		display: flex;
    	justify-content: center;
    	align-items: center;
	}
	.pay_list div:hover{
		background :grey;
		color :white;
	}
	
	.order_form_third_button{
		margin-top :2.3rem;
		font-size : 1.1rem;
		position : relative;
		top : 5.6rem;
		width : 100%;
		height : 3.2rem;
		background : black;
		color : white;
		text-align : center;
	}
</style>
<div class="order_form_third_wrapper">

	<div class="order_form_third_title">
		결제수단선택
	</div>
	<div class="pay_list">
		<div>
			카카오페이
		</div>
		<div>
			payco
		</div>
		<div>
			NaverPay
		</div>
		<div>
			실시간계좌이체
		</div>
	</div>
	
	
	<div class="long">	
		<button class="order_form_third_button">결제하기</button>
	
	</div>
</div>
</html>