<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
    
    <fieldset>
    	<legend>join</legend>
    	<form action="joinPro.jsp" method="POST">
	    	<p><input name="userid" placeholder="ID" required></p>
	    	<p><input name="userpw" placeholder="PW" type="password" required></p>
	    	<p><input name="nickname" placeholder="닉네임" required></p>
	    	<p><input name="username" placeholder="이름" required></p>
	    	<p><input name="age" placeholder="나이" type="number"></p>
	    	
	    	<p>
	    		<input class="button" type="submit" value="회원가입">
	    		<input class="button" type="submit" value="다시쓰기">
	    	</p>
    	</form>
    </fieldset>
    
    
    
    
<%@ include file="footer.jsp"%>