<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link href="css/style.css?v=3" rel ="stylesheet" type="text/css">
<style>

}
</style>
	<script type = "text/javascript">
		let i = 0;
		
		function changeImg(){
			alert('실행');
 		 	const arr = new Array("1.jpg","2.jpg","3.jpg","4.jpg","5.jpg");
 		 	
		
			let prefix ="img/";
			
			let obj = document.getElementById('intro_img');
			console.log(obj);
			console.log(arr[i]);
			obj.src =prefix+arr[i]; 
			i +=1;
			if(i==4){
				i=0;				
			}
			setTimeout('changeImg',5000);
		}
		
		setInterval('changeImg',7000);
		 
	</script>
</head>
<body>
<jsp:include page="header.jsp" flush="false"/>

<div class="main">
	<div class="main_wrapper">
		<div class="main_text">
			자연과 함께하는 기업.   <br> AirShop
		</div>
		<div>
			<img id="intro_img" class="main_img" src="img/1.jpg">	 
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" flush="false"/>
</body>

</html>