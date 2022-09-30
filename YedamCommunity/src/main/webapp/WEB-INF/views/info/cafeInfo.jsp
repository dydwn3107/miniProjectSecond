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
</style>
</head>
<body>
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<h2 class="display-4" style="font-weight: lighter; color: white">스터디
						카페</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- 상단 메뉴바 -->
	<!-- 클릭하면 계속 div가 색깔 바껴있기(추가) -->

	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- main contents : 카드 형식-->
	<h2>"오늘은 어디서 공부하지?"</h2>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="main-content">
			<article class="component">
				<img src="images/cafe-1.jpg" alt="이미지">
				<div class="description">
					<h3>YMCA 무인카페</h3>
					<p>#가성비#조용#스터디#9시영업끝</p>
					<p class="here">세부내용</p>
					<a
						href="https://map.naver.com/v5/entry/place/1433526634?c=14314100.0462919,4282833.7170042,15,0,0,0,dh"
						class="button" >더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-2.jpg" alt="이미지">
				<div class="description">
					<h3>북스터디카페391</h3>
					<p>#24시간 #노트북가능 #반월당역</p>
					<p class="here">세부내용</p>
					<a
						href="https://map.naver.com/v5/search/%EC%A4%91%EC%95%99%EB%A1%9C%20%EC%8A%A4%ED%84%B0%EB%94%94%EC%B9%B4%ED%8E%98/place/1460807630?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14313975.3350664,4282466.4415839,15,0,0,0,dh"
						class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-3.jpg" alt="이미지">
				<div class="description">
					<h3>스텝업</h3>
					<p>#카페같은#갬성#야외휴식공간</p>
					<p class="here">세부내용</p>
					<a
						href="https://map.naver.com/v5/search/%EC%A4%91%EC%95%99%EB%A1%9C%20%EC%8A%A4%ED%84%B0%EB%94%94%EC%B9%B4%ED%8E%98/place/1164922126?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14313709.3482751,4282553.5337517,15,0,0,0,dh"
						class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-4.jpg" alt="이미지">
				<div class="description">
					<h3>공간</h3>
					<p>#스터디룸#여러개#24시간</p>
					<p class="here">세부내용</p>
					<a
						href="https://map.naver.com/v5/search/%EC%A4%91%EC%95%99%EB%A1%9C%20%EC%8A%A4%ED%84%B0%EB%94%94%EC%B9%B4%ED%8E%98/place/1060935854?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14314120.8185089,4282288.0559215,15,0,0,0,dh"
						class="button">더보기</a>
				</div>
			</article>

			<article class="component">
				<img src="images/cafe-5.jpg" alt="이미지">
				<div class="description">
					<h3>고바슨 반달스퀘어점</h3>
					<p>#6인테이블#반월당역#샌드위치</p>
					<p class="here">세부내용</p>
					<a
						href="https://map.naver.com/v5/search/%EA%B3%A0%EB%B0%94%EC%8A%A8/place/1985668136?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14313979.7878460,4282222.0652313,15,0,0,0,dh"
						class="button">더보기</a>
				</div>
			</article>
			<article class="component">
				<img src="images/cafe-6.jpg" alt="이미지">
				<div class="description">
					<h3>투썸 동성로광장점</h3>
					<p>#단체스터디#사람많아</p>
					<p class="here">세부내용</p>
					<a
						href="https://map.naver.com/v5/entry/place/37202522?c=14313213.8206938,4282282.4101578,13,0,0,0,dh&placePath=%2Fhome&entry=plt"
						class="button">더보기</a>
				</div>
			</article>







		</div>

		<br> <br>
	</div>


</body>
</html>