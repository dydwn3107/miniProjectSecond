<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

section.heading-page {
	background-image: url(headercss/images/food2.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}

.col-md-6 {
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
	
	<!-- 맛집글 수정 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty foodInfoUpdateMessage}">
		<div class="alert alert-primary" role="alert">${foodInfoUpdateMessage}</div>
	</c:if>
	
	<!-- 맛집글 삭제 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty foodInfoDeleteMessage}">
		<div class="alert alert-primary" role="alert">${foodInfoDeleteMessage}</div>
	</c:if>
	
	<!-- Product section-->
	<section class="py-5" style="padding-top: 0">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0" src="${foodInfo.foodInfoAttechDir}"
						alt="${foodInfo.foodInfoName}사진" />
				</div>
				<div class="col-md-6">

					<h1 class="display-5 fw-bolder">&nbsp;&nbsp;${foodInfo.foodInfoName}</h1>
					<div class="fs-5 mb-5">
						<span>${foodInfo.foodInfoHashtag}</span>
						<div class="small mb-1">${foodInfo.foodInfoTel}</div>

					</div>
					<p class="lead">
					<p>--------Time--------</p>
					${foodInfo.foodInfoHolidays} 휴무
					<br>${foodInfo.foodInfoOpendays}
					<c:if test="${not empty foodInfo.foodInfoBreaktime}">
						<br>${foodInfo.foodInfoBreaktime} 브레이크타임
					</c:if>
					<c:if test="${not empty foodInfo.foodInfoLastorder}">
						<br> ${foodInfo.foodInfoLastorder} 라스트 오더
					</c:if>
					<br><br>
					<p>--------Menu--------</p>
					${foodInfo.foodInfoMenu1} ----- ${foodInfo.foodInfoMenu1Price}원
					<br> ${foodInfo.foodInfoMenu2} ----- ${foodInfo.foodInfoMenu2Price}원
					<br><br>
					<a href="${foodInfo.foodInfoLink}">자세히보기</a>
				</div>
			</div>
		</div>
	</section>
	<!-- 지도 -->
	
	<section class="contact-section spad">
        <div class="container" align="center">
            <div class="row">
                <div class="col-lg-6">
                <br>
                    <div class="section-title">
                        <h2>Location</h2>
                        
                    </div>
                    <br>
                    <div class="cs-text">
                        <div class="ct-address">
                            <span>Address:</span>
                            <p>${foodInfo.foodInfoAddress}</p>
                        </div>
                        
                            <div>
                                <span>Phone:</span>
                                ${foodInfo.foodInfoTel}
                           </div>
                           <br>
                            <div>
                                <span>Email:</span>
                                info.colorlib@gmail.com
                            </div>
                            <br>
                        
                        <div class="ct-links">
                            <span>Website:</span>
                            <p>https://conference.colorlib.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="cs-map">
                         <iframe src="${foodInfo.foodInfoMap}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <form id="foodInfoDetail" action="" method="post">
    	<input type="hidden" id="foodInfoId" name="foodInfoId" value="${foodInfo.foodInfoId}">
    </form>
    
    
    <c:if test="${memberAuthor ne 'ADMIN'}">
		<h4 style="margin-left: 70%">
			<button type="button" class="btn btn-primary btn-lg" style=" color: black !important; font-size:30px; background-color:aquaMarine !important" onclick="location.href='foodInfo.do'">
				목록
			</button>
		</h4>
	</c:if>
    
    <c:if test="${memberAuthor eq 'ADMIN'}">
		<h4 style="display:inline-block; margin-left: 70%">
			<button type="button" class="btn btn-primary btn-lg" style=" color: black !important; font-size:30px; background-color:aquaMarine !important" onclick="location.href='foodInfo.do'">
				목록
			</button>
		</h4>
		<h4 style="display:inline-block">
			<button type="button" class="btn btn-primary btn-lg" style=" color: black !important; font-size:30px; background-color:aquaMarine !important" onclick="foodInfoEdit('delete')">
				삭제
			</button>
		</h4>
		<h4 style="display:inline-block">
			<button type="button" class="btn btn-primary btn-lg" style=" color: black !important; font-size:30px; background-color:aquaMarine !important" onclick="foodInfoEdit('update')">
				수정
			</button>
		</h4>
	</c:if>
    
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/store.js"></script>
	
	<script type="text/javascript">
		function foodInfoEdit(mode) {
			switch (mode) {
				case 'update':
					foodInfoDetail.action = 'foodInfoUpdateForm.do';
					break;
				case 'delete':
					foodInfoDetail.action = 'foodInfoDelete.do';
			}
			
			foodInfoDetail.submit();
		}
	</script>
</body>
</html>
