<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp"%>

	<p id="isLogin">
		<%=(login != null) ? login.getNickname() + "님 로그인 중": "로그인 되어 있지 않음" %>
	</p>

    <div id="main">
        <img src="src/main.png">
    </div>

<%@ include file="footer.jsp"%>
