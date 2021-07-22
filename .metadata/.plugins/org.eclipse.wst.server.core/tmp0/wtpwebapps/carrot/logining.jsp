<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.carrot.beans.MemberDAO" %>
 <%@ page import="com.carrot.beans.MemberVO" %>
 
 <%
 	request.setCharacterEncoding("utf-8");
 	String id = request.getParameter("id");
 	String pwd = request.getParameter("pwd");
 	MemberDAO dao = MemberDAO.getInstance();
 	MemberVO vo =dao.login(id, pwd);
 	
 	
 	if(vo != null){
 		session.setAttribute("user",vo);
 		session.setAttribute("test",vo.getMember_id());
 		
 	}
 	else{
 		System.out.println("오류발생");
 		%>
 		<script>
 		alert("회원정보가 일치하지 않음.");
 		window.history.back();
 		</script>
 		<% 
 	}
 	%>
 	<script>
 		window.location.href="main.jsp";
 	</script>
 	
 	
 
