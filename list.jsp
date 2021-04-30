<%@page import="java.util.ArrayList"%>
<%@page import="Myweb.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ include file="header.jsp"%>
	<style>
		#memberList {
			border-collapse: collapse;
			width: 80%;
			margin: 0 auto;
		}
	
		#memberList th, #memberList td {
			border: 1px solid black;
			padding: 0 10px;
		}
	</style>
	
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	<c:set var="list" value="${dao.selectAccount() }"/>
	
	<table id="memberList">
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>닉네임</th>
			<th>이름</th>
			<th>나이</th>
			<th>가입 날짜</th>
			<th>관리자</th>		
		</tr>
		
		<c:forEach var="dto" items="${list }">
			
			<tr>
				<td>${dto.userid }</td>
				<td>${dto.userpw }</td>
				<td>${dto.nickname }</td>
				<td>${dto.username }</td>
				<td>${dto.age }</td>
				<td>${dto.joinDate }</td>
				<td>${dto.admin }</td>
			</tr>
		</c:forEach>
	</table>



<%@ include file="footer.jsp"%>