<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>join.jsp</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>회원가입</h2>
	<div><font color="blue">${data}</font></div>
	<hr/>
	<div><img src="${ctp}/resources/images/2.jpg" width="350px"/></div>
	<hr/>
	<p>
		<a href="${ctp}/member/idCheck" class="btn btn-success">아이디체크</a>
		<a href="${ctp}/member/nickCheck" class="btn btn-primary">닉네임체크</a>
	</p>
	<p>
		<a href="${ctp}/member/joinOk">가입하기</a>
	</p>
	<hr/>
	<p>
		<a href="${ctp}/" class="btn btn-warning">돌아가기</a>
	</p>
</div>
<p><br/></p>
</body>
</html>