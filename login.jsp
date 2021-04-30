<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

	<%
		Cookie[] cs = request.getCookies();	
	
		String userid = "";
		String userpw = "";
		String store = "";
		
		if(cs!= null){
			for (Cookie c : cs) {
				if ("userid".equals(c.getName())){
					userid = c.getValue();
				}
				if ("userpw".equals(c.getName())){
					userpw = c.getValue();
				}
				if ("store".equals(c.getName())){
					store = c.getValue();
				}
				
			}
		}
		/*
		for(int i = 0; i < cs.length; i++){
			if("userid".equals(cs[i].getName())){
				// 내가 가져오려는 이름이 맞는지 검사하고
				userid = cs[i].getValue();	// 해당 값을 가져온다
			}
			
			if("userpw".equals(cs[i].getValue())){
				userpw = cs[i].getValue();
			}
			if("storeid".equals(cs[i].getName())){
				storeid = cs[i].getValue();
			}
		}*/
	%>
	
	<fieldset>
		<legend>Login</legend>
			
		<%--로그인 구현, 로그인 성공시 세션 정보를 유지 시키고 index.jsp 그림 우측 상단에 닉네임 출력 --%>
		<form action="loginPro.jsp" method="POST">
			<p><input name="userid" placeholder="ID입력" autofocus required value="<%=userid%>"></p>
			<p><input name="userpw" type="password" placeholder="PW 입력" required value="<%=userpw%>"></p>
			<p><input name="store" type="checkbox" value="on" <%=(store.equals("on")) ? "checked" : "" %>>로그인 정보 유지</p>
			
			
			<p>
				<input class="button" type="submit" value="로그인">
				<input class="button" type="reset" value="초기화">
			</p>
		
		</form>
		
	</fieldset>
	
<%@ include file="footer.jsp"%>