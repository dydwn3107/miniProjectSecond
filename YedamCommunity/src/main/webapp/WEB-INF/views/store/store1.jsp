<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="../images/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/store.css" rel="stylesheet" />
<style>
.col-md-6 {
	text-align: center;
}
</style>



</head>
<body>
	<!-- Navigation-->

	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0" src="images/store1.jpg"
						alt="식당1" />
				</div>
				<div class="col-md-6">

					<h1 class="display-5 fw-bolder">신라식당</h1>
					<div class="fs-5 mb-5">
						<span>#낙지볶음 #웨이팅 #한식</span>
						<div class="small mb-1">053-422-3105</div>

					</div>
					<p class="lead">
					<p>--------Time--------</p>
					수 정기휴무 (매주 수요일)<br> 매일 11:00 - 21:30<br> 16:20 - 17:00
					브레이크타임<br> 21:00 라스트 오더<br> <br>
					<p>--------Menu--------</p>
					돌판 낙지볶음 -----12,000원<br> 돌판 제육볶음 -----11,000원<br> <br>
					<a href="http://sillafood.co.kr/">자세히보기</a>


				</div>
			</div>
		</div>
	</section>
	<!-- 지도 api -->
	<div id="map" style="width: 100%; height: 350px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 사용하세요"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
	</script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/store.js"></script>
</body>
</html>
