<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/info.css">
<title>맛집 게시판</title>

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

.navMenu a:nth-child(1) {
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
	-webkit-transform: translateX(400px);
	transform: translateX(400px);
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
}

.navMenu a:nth-child(1):hover ~ .dot {
	-webkit-transform: translateX(510px);
	transform: translateX(510px);
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
	opacity: 1;
}

.navMenu a:nth-child(2):hover ~ .dot {
	-webkit-transform: translateX(740px);
	transform: translateX(740px);
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
	opacity: 1;
}

section.heading-page {
	background-image: url(headercss/images/food2.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
	
}
</style>
</head>
<body>
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="display-4" style="font-weight: lighter; color: white">주변 맛집들</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 상단 메뉴바 -->
	<!-- 클릭하면 계속 div가 색깔 바껴있기(추가) -->
	<!-- <header>
		<nav class="navMenu">
			<a href="infoFood.do">맛집 리스트</a> <a href="infoCafe.do">스터디카페 리스트</a>
			<div class="dot"></div>
		</nav>
	</header> -->
	<br>
	<c:if test="${memberAuthor eq 'ADMIN'}">
		<h2 style="text-align: right; margin-right: 20%">
			<button type="button" class="btn btn-primary btn-lg" style=" color: black !important; font-size:30px; background-color:aquaMarine !important" onclick="location.href='foodInfoInsertForm.do'">
				맛집 추가
			</button>
		</h2>
	</c:if>
	<br>
<!-- 
	<!-- main contents : 카드 형식-->
	<h2>"오늘은 뭐 먹지?"</h2>
	<br>
	<!--<c:if test="${not empty list }">
		<c:forEach items="${list }" var="n">
			<tr onclick="selectNotice('${n.noticeId }')">
				<article class="component">
					<img src="" alt="">
					<div class="description">
						<h3>만복식당</h3>
						<p>#매일다른메뉴 #한식</p>
						<p class="here">세부내용</p>
						<a return="main/store/store2">더보기</a>
					</div>
				</article>
				<td>${n.noticeId }</td>
				<td>${n.noticeTitle }</td>
				<td>${n.noticeWriter }</td>
				<td><script>
					document.write(timestamp('${n.noticeDate}'));
				</script></td>
				<td>${n.noticeAttech }</td>
				<td>${n.noticeHit }</td>
			</tr>
		</c:forEach>
	</c:if>-->

	<div class="container">
		<div class="main-content">
			<!-- 맛집글이 없을때 -->
			<c:if test="${empty foodList}">
				<h2>맛집 등록이 되어있지 않습니다.</h2>
			</c:if>
		
			<!-- 맛집글이 있을때 -->
			<c:if test="${not empty foodList}">
				<c:forEach items="${foodList}" var="food">
					<article class="component">
						<img src="${food.foodInfoAttechDir}" alt="${food.foodInfoName}사진">
						<div class="description">
							<h3>${food.foodInfoName}</h3>
							<p>${food.foodInfoHashtag}</p>
							<a href="#" onclick="foodInfoDetail('${food.foodInfoId}')" class="button">더보기</a>
						</div>
					</article>
				</c:forEach>
			</c:if>
		</div>
		<br> <br> <br> <br>
		<!-- 맛집게시글번호 가져갈 form과 input -->
		<div>
			<form id="foodInfo" action="foodInfoDetail.do">
				<input type="hidden" id="foodInfoId" name="foodInfoId">
			</form>
		</div>
	</div>
	<br><br><br>

	<script type="text/javascript">
	    // 해당 맛집게시글번호 들고 상세페이지로
		function foodInfoDetail(id) {
			document.getElementById('foodInfoId').value = id;
			foodInfo.submit();
		}
	</script>
</body>
</html>