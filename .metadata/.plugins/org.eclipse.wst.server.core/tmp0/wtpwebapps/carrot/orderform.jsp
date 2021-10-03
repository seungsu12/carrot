<%@page import="com.carrot.beans.ShoesVO"%>
<%@page import="com.carrot.beans.ShoesDAO"%>
<%@page import="com.carrot.beans.orderVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
<link href="css/style.css?v=2" rel="stylesheet" type="text/css" />
<style>

</style>
	<jsp:useBean id="orderVO" class="com.carrot.beans.orderVO"/>
	<jsp:setProperty property="*" name="orderVO"/> 
</head>
	<script>
		function test(){
			alert('test');
		}
	</script>
<%
	ShoesDAO dao = ShoesDAO.getInstance();
	ShoesVO vo = dao.getShoesOne(orderVO.getShoes_id()+"");
	System.out.println("count : " + orderVO.getCount());
	System.out.println("size : " +orderVO.getSize());
	request.setAttribute("shoesVO", vo);
%>
<body>
	<div class="nav_title">
		<div class ="nav_title_logo">
			<a href="main.jsp">Airshop</a>
		</div>
	</div>
	<div class="order_form_wrapper">
		<div class="order_title center">
			<span>주문결제</span>
		</div>
		<div class="order_form">
			<div class="order_main order_main_content">
				
				<div class="order_main_title order_main_content">
					<span>주문고객</span>
					<button class="order_main_login">로그인</button>
				</div>
				<div class="order_form_content">
					<jsp:include page="order_form_third.jsp"/>
				</div>
			</div>
			
			<div class="order_aside">
				<div class="order_aside_title">
					주문내역
				</div>
				<div class="order_aside_content">
					<div class="order_aside_content_img">
						<img src="img/shoe_1.png">
					</div>
					<div class="order_aside_content_text">
						<div class="order_aside_content_text_title">${shoesVO.name }</div>
						<div class="order_aside_content_text_code">상품 코드</div>
						<div class="order_aside_content_text_size">사이즈 : ${orderVO.size }</div>
						<div class="order_aside_content_text_count">수량 :  ${orderVO.count }개</div>
						<div class="order_aisde_content_text_price">${shoesVO.price }원</div>
					</div>
				</div>
				<div class="order_aside_bottom">
					
						<div class="order_aside_bottom_content">
						
							<div>상품금액</div>
							<div><fmt:formatNumber type="number" value="${shoesVO.price}"/>원</div>
						</div>
						<div class="order_aside_bottom_content">
						
							<div>배송비</div>
							<div>0원</div>
						</div>
						<div class="order_aside_bottom_content">
						
							<div>할인금액</div>
							<div class="order_aside_bottom_content_price">0원</div>
						</div>
						
						<div class="order_aside_bottom_content order_aside_bottom_content2">
							<div>총 결제금액</div>
							<div class="order_aside_bottom_content_price"><fmt:formatNumber type="number" value="${shoesVO.price}"/>원</div>
						</div>
						<div class="order_aside_bottom_text_wrapper">
							<p class="order_aside_bottom_text">
								• 장기간 장바구니에 보관하신 상품은 시간이 지남에 따라 가격과 혜택이 변동 될 수 있으며, 최대 30일동안 보관됩니다.
							</p>
						</div>
						<div class="order_aside_bottom_text_wrapper">
							<p >
								프로모션 코드 사용 안내</p>
							<p class="order_aside_bottom_text">	• 프로모션 코드 사용에 따라 최종 결제 금액은 달라질 수 있습니다.
							</p>
						</div>
					
				</div>
			</div>
		</div>
	
	
	</div>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// submit button on off 함수
		const submit_button = document.querySelector(".order_submit_button");
		const button_event = document.getElementById("button_event");
		const checkbox = document.getElementById('order_checkbox');
		
		
		
		
		
		function check_email(){
			const input = document.querySelector('.order_email');
			const text = document.querySelector('.order_email_inform_text');
		    let regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			
		     if (regExp.test(input.value)){
		    	 text.innerHTML='';
				return true;
			}
		     else if(input.value == ''){ 
		    	 text.innerHTML = '필수입력 항목입니다';
		    	 return false;
		     } 
		     
			 else{
				 text.innerHTML='이메일 형식이 아닙니다.';
				 return false;
			 }
		}
		function check_pnum(){
			console.log("check_pnum 실행");
			const input = document.getElementById('order_phone');
			const text = document.querySelector('.order_phone_inform_text');
			
			if(input.value == ''){
				text.innerHTML = '필수입력 항목입니다';
			}
			else{
				text.innerHTML ='';
				return true;
			}
		}
		
		/* button_event.addEventListener('click',check_pnum);
		button_event.addEventListener('click',check_email); */


	</script>
</body>
</html>