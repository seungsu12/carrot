<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.carrot.beans.MemberVO" %>
<%

	MemberVO vo =(MemberVO)session.getAttribute("user");
	if(vo!=null) System.out.println(vo.getName());
	
	session.invalidate();
	
%>
<script>
	window.location.href ="main.jsp";
</script>