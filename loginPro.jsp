<%@page import="Myweb.AccountDTO"%>
<%@page import="Myweb.DAO"%>
<%@page import="day11.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="user" class="Myweb.AccountDTO"/>
	<jsp:setProperty property="*" name="user"/>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String store = request.getParameter("store");
	
		DAO dao = new DAO();
	
		AccountDTO login = dao.selectAccountOne(user);
	
			if (login != null){
				// 로그인 성공
				session.setAttribute("login", login);
				
					Cookie cid = new Cookie("userid", user.getUserid());
					Cookie cpw = new Cookie("userpw", user.getUserpw());
					Cookie cst = new Cookie("store", store);
					
				if ("on".equals(store)){
					
					cid.setMaxAge(60 * 60 * 24);
					cpw.setMaxAge(60 * 60 * 24);
					cst.setMaxAge(60 * 60 * 24);
				}
				else{
					cid.setMaxAge(0);
					cpw.setMaxAge(0);
					cst.setMaxAge(0);
					
				}
				response.addCookie(cid);
				response.addCookie(cpw);
				response.addCookie(cst);
				
				response.sendRedirect("index.jsp");
			}
		
			else {
				%>
				<script>
				
				alert('로그인 실패');
				location.href = 'login.jsp';
				
				</script>
		<% } %>
	
</body>
</html>