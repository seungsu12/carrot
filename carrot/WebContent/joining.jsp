<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.carrot.beans.MemberVO" %>
<%@ page import ="com.carrot.beans.MemberDAO" %>
<%@ page import ="com.carrot.beans.test" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			request.setCharacterEncoding("utf-8");
		%>

		<jsp:useBean id="memberVO" class="com.carrot.beans.MemberVO"/>
		<jsp:setProperty property="*" name="memberVO"/>
	
		<%
			MemberDAO dao = MemberDAO.getInstance();
		
			dao.insertMember(memberVO);
		
		%>
		
		<h1>회원 가입을 환영합니다</h1>
		
		<%= memberVO.getName() %>
		
</body>
</html>