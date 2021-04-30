<%@page import="Myweb.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinPro.jsp</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="join" class="Myweb.AccountDTO"/>
	<jsp:setProperty property="*" name="join"/>
	
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	
	<c:set var="row" value="${dao.insertAccount(join) }"/>
	
	<c:if test="${row == 1 }">
		<%-- 로그인 성공 --%>
		<script>
			alert('회원가입 성공');
			location.href = 'index.jsp';
		</script>
	</c:if>
	
	<c:if test="${row == 0 }">
		<script>
			alert('회원가입 실패');
			history.go(-1);
		</script>
	</c:if>
	
</body>
</html>