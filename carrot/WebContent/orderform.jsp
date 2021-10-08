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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>	
</head>
	<jsp:useBean id="orderVO" class="com.carrot.beans.orderVO"/>
	<jsp:setProperty property="*" name="orderVO"/>
<%
	/* orderVO orderVO = (orderVO)session.getAttribute("orderVO"); */
	
	ShoesDAO dao = ShoesDAO.getInstance();
	/* ShoesVO vo = dao.getShoesOne(orderVO.getShoes_id()+""); */
	ShoesVO vo  = dao.getShoesOne("1");
	session.setAttribute("shoesVO", vo);
	
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
					<jsp:include page="${form_number }"/>
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

</html>