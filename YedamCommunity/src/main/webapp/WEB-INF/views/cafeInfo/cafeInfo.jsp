<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/info.css">
<title>스터디카페 리스트</title>

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Alumni+Sans+Pinstripe&family=Single+Day&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

header {
	display: block;
	background-color: #73685d;
	height: 80px;
	text-align: center;
}

.navMenu {
	position: relative;
	left: 50%;
	padding-top: 100px;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.navMenu a {
	color: #ff7f50;
	text-decoration: none;
	font-size: 1.5em;
	font-weight: bold;
	text-transform: uppercase;
	display: inline-block;
	width: 230px;
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
}

.navMenu a:nth-child(2) {
	color: yellow;
}

.navMenu a:hover {
	color: yellow;
}

.navMenu .dot {
	width: 6px;
	height: 6px;
	background: yellow;
	border-radius: 50%;
	opacity: 0;
	-webkit-transform: translateX(30px);
	transform: translateX(30px);
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
}

.navMenu a:nth-child(1):hover ~ .dot {
	-webkit-transform: translateX(70px);
	transform: translateX(70px);
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
	opacity: 1;
}

.navMenu a:nth-child(2):hover ~ .dot {
	-webkit-transform: translateX(340px);
	transform: translateX(340px);
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
	opacity: 1;
}

section.heading-page {
	background-image: url(headercss/images/study1.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}

#modify_Btn:hover h5 {
	color:white;
}

#delete_Btn:hover h5 {
	color:white;
}

</style>
</head>
<body>
	<!-- 위쪽 사진부분 -->
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<h1 class="display-4" style="font-weight: lighter; color: white">스터디 카페</h1>
				</div>
			</div>
		</div>
	</section>
	<br>
	
	<!-- 스터디카페글 수정 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty cafeInfoUpdateMessage}">
		<div class="alert alert-primary" role="alert">${cafeInfoUpdateMessage}</div>
	</c:if>
	
	<!-- 스터디카페글 삭제 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty cafeInfoDeleteMessage}">
		<div class="alert alert-primary" role="alert">${cafeInfoDeleteMessage}</div>
	</c:if>
	
	<!-- 관리자만 카페 추가 가능 -->
	<c:if test="${memberAuthor eq 'ADMIN'}">
		<h2 style="text-align: right; margin-right: 20%">
			<button type="button" class="btn btn-primary btn-lg" style=" color: black !important; font-size:30px; background-color:aquaMarine !important" onclick="location.href='cafeInfoInsertForm.do'">
				카페 추가
			</button>
		</h2>
	</c:if>
	
	<br>
	<h2>"오늘은 어디서 공부하지?"</h2>
	<br>

	<div class="container">
		<div class="main-content" style="justify-content:space-around">
		
			<c:forEach items="${cafeList}" var="cafe">
				<article class="component">
					<img src="${cafe.cafeInfoAttechDir}" alt="${cafe.cafeInfoName} 사진" style="background-size: cover; width:353px; height:265px;">
					<div class="description">
						<h3>${cafe.cafeInfoName}</h3>
						<p>${cafe.cafeInfoHashtag}</p>
						<a
							href="${cafe.cafeInfoLink}"
							class="button" >더보기</a>
						<c:if test="${memberAuthor eq 'ADMIN'}">
							<div class="inputArea" style="margin-top:10px">
								<button type="button" id="delete_Btn" class="btn btn-danger" onclick="cafeInfoEdit('delete', '${cafe.cafeInfoId}')">
									<h5 style="line-height:1; margin:0;">삭제</h5>
								</button>
								<button type="button" id="modify_Btn" class="btn btn-warning" onclick="cafeInfoEdit('update', '${cafe.cafeInfoId}')">
									<h5 style="line-height:1; margin:0;">수정</h5>
								</button>
							</div>
						</c:if>
					</div>
				</article>
			</c:forEach>

			<!-- update 및 Delete할 id 들고 서버로 갈 form -->
			<form id="cafeInfo" action="" method="post">
				<input type="hidden" id="cafeInfoId" name="cafeInfoId">
			</form>
			
		</div>
		<br>
	</div>
	
	<script type="text/javascript">
		// cafeInfoId 들고 수정폼, 혹은 삭제하러 submit
		function cafeInfoEdit(mode, id) {
			console.log("왔다.");
			document.getElementById('cafeInfoId').value = id;
			
			switch (mode) {
				case 'update':
					cafeInfo.action = 'cafeInfoUpdateForm.do';
					break;
				case 'delete':
					cafeInfo.action = 'cafeInfoDelete.do';
			}
			
			cafeInfo.submit();
		}
	</script>
</body>
</html>