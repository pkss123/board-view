<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%>
	
	<jsp:useBean id="dao" class="Myweb.DAO"/>
	<c:set var="dto" value="${dao.selectBoardOne(param.idx) }"/>
	
	<br>

	<c:if test="${empty dto }">
		<script>
			alert('없는 게시물 입니다');
			location.href='index.jsp';
		</script>
	</c:if>

	<div id="contents">
		<div>
            <h2>${dto.title }</h2>
            <h5>${dto.nickName } | ${dto.creation } | ${dto.ipaddr }
            </h5>
        </div>
	
        <hr><br>
        
        <div>
            	${dto.contents }
        </div>
    </div>
    <br>

    <div id="update">
        <div><a href="board.jsp"><button>목록</button></a></div>
        <div>
            <a><button>수정</button></a>
            <a><button>삭제</button></a>
        </div>
    </div>

<%@ include file="footer.jsp"%>