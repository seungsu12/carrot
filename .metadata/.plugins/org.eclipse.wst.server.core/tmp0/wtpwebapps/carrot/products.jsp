<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>products</title>
</head>
<link href="css/style.css?v=2" rel="stylesheet" type="text/css" />
<style>

.item_wrapper{
	margin-top : 4em;
	display :grid;
	grid-template-columns : 1fr 1fr 1fr;
	grid-column-gap : 2em;
	grid-row-gap : 2em;
}
.product_item_textarea{

	display :flex;
	justify-content: space-between;
}
.product_item img{
	width :380px;
	height : 380px;
}
.product_item_textarea_right span{
	display :block;
}
.product_item{
	width: 80%
}
.product_main{
	display :grid;
	grid-template-columns : 1fr 6fr;
	
}
.product_title_wrapper{
	margin-top : 1em;
	margin-bottom : 1em;
	width : 100%;
	display:flex;
	justify-content : center;
}
.product_title{
	
	width :94%;
	display: flex;
	justify-content : space-between;
	
}
.product_title div{
	font-size :  3.4em;
}
.product_aside{
	overflow : scroll;
	margin-right : 1em;
	height: 100%;
	display: flex;
	flex-direction : column;
	align-items : center;
	padding : 0 1em 0 1em; 
}
.product_aside_sizebox{
	display :grid;
	grid-template-columns :1fr 1fr 1fr;
	grid-row-gap : 0.3em;
	width :100%;
}
.product_aside_size{
	border : 1px solid grey;
	border-radius : 0.6em;
	color : grey;
	width :4em;
	height : 2em;
	font-size : 0.9em;	
}
.product_aside_size:hover{
	background : grey;
	color :white;
}
.product_aside_title{
	margin :1em;
}
</style>
<body>
<jsp:include page="header.jsp" flush ="false"/>
<div class="product_title_wrapper">
	<div class="product_title">
		<div>Men 신발</div>
		<div>필터</div>
	</div>
</div>
<div class ="product_main" style="border :1px solid black">
<div class="product_aside">
	<div class="center product_aside_title">신발 사이즈</div>
	<div class="product_aside_sizebox">
		<c:forEach var ="i" begin="220" end="290" step="5">
		<div class="product_aside_size center">${i}</div>
		</c:forEach>
	
	</div>

</div>
	<div class="item_wrapper">
	
		<div class="product_item">
			<img src="img/shoe_1.png" alt="상품" />
			<div class ="product_item_textarea">
				<div class="product_item_textarea_right">
					<span>나이키 에어맥스</span>
					<span>남성 신발 라이프 스타일</span>
				</div>
				<div>
					<span>15,900원</span>
				</div>
			</div>
		</div>
		<div class="product_item">
			<img src="img/shoe_2.png" alt="상품" />
			<div class ="product_item_textarea">
				<div class="product_item_textarea_right">
					<span>나이키 에어맥스</span>
					<span>남성 신발 라이프 스타일</span>
				</div>
				<div>
					<span>15,900원</span>
				</div>
			</div>
		</div>
		<div class="product_item">
			<img src="img/shoe_3.png" alt="상품" />
			<div class ="product_item_textarea">
				<div class="product_item_textarea_right">
					<span>나이키 에어맥스</span>
					<span>남성 신발 라이프 스타일</span>
				</div>
				<div>
					<span>15,900원</span>
				</div>
			</div>
		</div>
		<div class="product_item">
			<img src="img/shoe_4.png" alt="상품" />
			<div class ="product_item_textarea">
				<div class="product_item_textarea_right">
					<span>나이키 에어맥스</span>
					<span>남성 신발 라이프 스타일</span>
				</div>
				<div>
					<span>15,900원</span>
				</div>
			</div>
		</div>
		<div class="product_item"></div>
		<div class="product_item"></div>
		<div class="product_item"></div>
		<div class="product_item"></div>
		<div class="product_item"></div>
	
	</div>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>