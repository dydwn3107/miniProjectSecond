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
	<br><br>
	<br>
	<br>
<!-- 
	<!-- main contents : 카드 형식-->
	<h2>"오늘은 뭐 먹지?"</h2>
	<br>
	<br>
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
			<article class="component">
				<img src="images/store1.jpg" alt="이미지1">
				<div class="description">
					<h3>신라식당</h3>
					<p>#낙지볶음 #웨이팅 #한식</p>
					<p class="here">세부내용</p>
					<a href="store1.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/store2.jpg" alt="이미지2">
				<div class="description">
					<h3>만복국수</h3>
					<p>#매일다른메뉴 #한식</p>
					<p class="here">세부내용</p>
					<a href="store2.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/store3.jpg" alt="이미지3">
				<div class="description">
					<h3>제주곤이칼국수</h3>
					<p>#고기국수 #제주 #한식</p>
					<p class="here">세부내용</p>
					<a href="store3.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/store4.jpg" alt="이미지4">
				<div class="description">
					<h3>개미집 동성로점</h3>
					<p>#매콤한 #낙곱새</p>
					<p class="here">세부내용</p>
					<a href="store4.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/store5.jpg" alt="이미지5">
				<div class="description">
					<h3>포꼬</h3>
					<p>#베트남 #반쎄오존맛</p>
					<p class="here">세부내용</p>
					<a href="store5.do" class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/store6.jpg" alt="이미지6">
				<div class="description">
					<h3>마차이짬뽕</h3>
					<p>#짬뽕 #도라방스</p>
					<p class="here">세부내용</p>
					<a href="store6.do" class="button">더보기</a>
				</div>
			</article>



		</div>
		<br> <br> <br> <br>

	</div>



	<br>
	<br>
	<br>


</body>
</html>