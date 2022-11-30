<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
</head>
<body>
	<c:if test="${empty vo}">
		<p>일치하는 아이디가 없습니다.</p>
		<input type="button" value="회원가입 하러 가기" onclick="location.href='userSignUpSelect.do'">
	</c:if>
	
	<c:if test="${not empty vo}">
		<p>당신의 아이디는 [ <b>${vo.uid}</b> ] 입니다.</p>
		<input type="button" value="로그인 하러 가기" onclick="location.href='userLogin_form.do?uid=${vo.uid}'">
		<input type="button" value="비밀번호 찾으러 가기" onclick="location.href='findPwd_form.do?uid=${vo.uid}'">
	</c:if>
	
	<input type="button" value="돌아가기" onclick="location.href='userLogin_form.do'">
=======
<style>
	* {margin: 0; padding: 0;}
	
	.content {
		width: 1300px;
		margin: 50px 0 0 0;
		display: inline-block;
		text-align: center;
	}
	
	.find_text {
		padding: 30px 40px;
		margin-bottom: 50px;
	}
	
	input[type=button] { 
		width: 230px;
	    padding: 10px 10px;
	    margin: 0px auto;
	    border: none;
	    border-radius: 5px;
		background-color: #BDBDBD;
	}
	
	input[type=button]:hover {
    	background-color: #848484;
  	}
</style>
</head>
<body>
<div>
	<!-- Header -->
	<jsp:include page="../include/header.jsp" />
	
	<div class="content">
		<c:if test="${empty vo}">
			<b>일치하는 아이디가 없습니다.</b>
			<input type="button" value="회원가입 하러 가기" onclick="location.href='userSignUpSelect.do'">
		</c:if>
		
		
		<c:if test="${not empty vo}">
			<p class="find_text">당신의 아이디는 [ <b style="font-size: 1.2em">${vo.uid}</b> ] 입니다.</p>
			<input type="button" value="로그인 하러 가기" onclick="location.href='userLogin_form.do?uid=${vo.uid}'">
			<input type="button" value="비밀번호 찾으러 가기" onclick="location.href='findPwd_form.do?uid=${vo.uid}'">
		</c:if>
	
		<input type="button" value="돌아가기" onclick="location.href='userLogin_form.do'">
		
	</div>
</div>
>>>>>>> jy
</body>
</html>