<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		border :1px solid black;
	}
	div{
		width: 200px;
		height:200px;
	}
	p{
		width : 100px;
		height:100px
	}
	span{
		width: 50px;
		height: 50px;
	}
</style>
</head>
<body>

	<div onclick="event4()">
	</div>

	<div onclick="event1()">
	1
		<p onclick="event2()">
		2	
			<a id="event1" href="https://www.naver.com">naver</a>		
		</p>
	
	</div>
</body>

<script>
	function event4(){
		console.log("anotehr event");
	}
	
	function event1(){
		console.log("div event");
	}
	function event2(){
		console.log("p event");
	}
	function event3(event){
		console.log("span event");
		event.stopPropagtion();
	}
	
	const eventblock = document.getElementById('event1');
	
	console.log(eventblock);
	
	
	
	eventblock.addEventListener('click',(event) =>{
		event.preventDefault();	
	});
	
	eventblock.addEventListener('click',(event) =>{
		console.log('event2 발동');
	})
	

</script>
</html>