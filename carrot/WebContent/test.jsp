<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
	System.out.println("member_id :"+request.getParameter("member_id"));
	System.out.println("sheos_id :"+request.getParameter("shoes_id"));
	System.out.println("size : "+request.getParameter("size"));
	System.out.println("count : "+request.getParameter("count"));

%>
</body>
</html>