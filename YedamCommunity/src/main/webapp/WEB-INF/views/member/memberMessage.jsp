<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.emoji {
	width: 160px;
	height: 160px;
}
</style>
<title>Insert title here</title>

</head>
<body>
	<div align="center">
	<br><br><br><br><br><br><br><br><br>
	<h1>${message }</h1>
	<c:if test="${message eq '회원탈퇴가 정상적으로 처리 되었습니다.'}">
		<img src="images/sad.png" alt="" class="emoji">
	</c:if>
	<c:if test="${message eq '★ 회원가입이 실패했습니다 ★'}">
		<img src="images/sad.png" alt="" class="emoji">
	</c:if>
	<c:if test="${message eq '★ 회원가입이 완료 되었습니다 로그인 해 주세요!!★'}">
		<img src="images/kiss.png" alt="" class="emoji">
	</c:if>
	<br><br><br><br><br><br><br><br><br><br><br>
	<h2><a href="main.do">HOME</a></h2>
	<br><br><br><br>
	</div>
</body>
</html>