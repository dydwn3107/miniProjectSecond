<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">

section.heading-page {
	background-image: url(headercss/images/food2.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}

.register{
    background-image: url(images/lunch.jpg);
    background-size: cover;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
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

	<!-- 맛집글 등록 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty foodInfoInsertMessage}">
		<div class="alert alert-primary" role="alert">${foodInfoInsertMessage}</div>
	</c:if>

	<div class="register">
		<form action="foodInfoInsert.do" onsubmit="return hashtagCombine()" method="post" enctype="multipart/form-data">
			<div class="row">
			    <div class="col-md-3 register-left">
			        <img src="" alt=""/>
			    </div>
			    <div class="col-md-9 register-right">
			        <div class="tab-content" id="myTabContent">
			            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
			                <h1 class="register-heading">맛집 정보를 입력해주세요</h1>
			                <div class="row register-form">
			                	<div class="col-md-12">
			                		<h2>기본정보</h2>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control" placeholder="맛집 이름" value=""
			                            	id="foodInfoName" name="foodInfoName" required />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="tel" class="form-control" placeholder="전화번호 &nbsp;&nbsp;ex) 053-853-7455" value=""
			                           		id="foodInfoTel" name="foodInfoTel" required />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control" placeholder="영업 시간 &nbsp;&nbsp;ex) 매일 11:00 - 21:30" value=""
			                            	id="foodInfoOpendays" name="foodInfoOpendays" required />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control" placeholder="브레이크타임 &nbsp;&nbsp;ex) 15:00 - 17:00" value="" 
			                            	id="foodInfoBreaktime" name="foodInfoBreaktime" />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control" placeholder="라스트오더 &nbsp;&nbsp;ex) 21:00" value="" 
			                            	id="foodInfoLastorder" name="foodInfoLastorder" />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="휴무일 &nbsp;&nbsp;ex) 매주 수요일 " value=""
			                            	id="foodInfoHolidays" name="foodInfoHolidays" required />
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="주소 &nbsp;&nbsp;ex) 대구광역시 중구 남일동 중앙대로 406-8" value=""
			                            	id="foodInfoAddress" name="foodInfoAddress" required />
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="google map 공유 지도퍼가기 HTML 주소" value=""
			                            	id="foodInfoMap" name="foodInfoMap" required />
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="맛집 사이트 주소" value=""
			                            	id="foodInfoLink" name="foodInfoLink" required />
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="부가정보 &nbsp;&nbsp;ex) 점심특선 별도" value=""
			                            	id="foodInfoAdditional" name="foodInfoAdditional" />
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-12">
			                    	<hr>
			                    </div>
			                    
			                    <div class="col-md-12">
			                		<h2>대표메뉴</h2>
			                    </div>
			                    <div class="col-md-3">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="대표메뉴 1" value=""
			                            	id="foodInfoMenu1" name="foodInfoMenu1" required />
			                        </div>
			                    </div>
			                    <div class="col-md-3">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="대표메뉴 1 가격" value=""
			                            	id="foodInfoMenu1Price" name="foodInfoMenu1Price" required />
			                        </div>
			                    </div>
			                    <div class="col-md-3">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="대표메뉴 2" value=""
			                            	id="foodInfoMenu2" name="foodInfoMenu2" required />
			                        </div>
			                    </div>
			                    <div class="col-md-3">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="대표메뉴 2 가격" value=""
			                            	id="foodInfoMenu2Price" name="foodInfoMenu2Price" required />
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-12">
			                    	<hr>
			                    </div>
			                    
			                    
			                    <div class="col-md-12">
			                		<h2>#해시태그</h2>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="해시태그 키워드 1" value=""
			                            	id="foodInfoHashtag1" name="foodInfoHashtag1" required />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="해시태그 키워드 2" value=""
			                            	id="foodInfoHashtag2" name="foodInfoHashtag2" />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="해시태그 키워드 3" value=""
			                            	id="foodInfoHashtag3" name="foodInfoHashtag3" />
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-12">
			                    	<hr>
			                    </div>
			                    
			                    <div class="col-md-12">
			                		<h2>사진 첨부</h2>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="file" class="form-control" value="" id="foodInfoAttech" name="foodInfoAttech" required />
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-6">
			                    </div>
			                    <div class="col-md-6">
			                    </div>
			                    
			                    
			                    <div class="col-md-6">
			                    	<input type="hidden" id="foodInfoHashtag" name="foodInfoHashtag">
			                        <input type="submit" class="btnRegister"  value="맛집 등록"/>
			                        <input type="button" class="btnRegister" onclick="location.href='foodInfo.do'" value="취소"/>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
		</form>
	</div>
    <script type="text/javascript">
    	// submit하기 전에 해쉬태그 합치기.
    	function hashtagCombine() {
    		let hashtag1 = document.getElementById('foodInfoHashtag1').value;
    		let hashtag2 = document.getElementById('foodInfoHashtag2').value;
    		let hashtag3 = document.getElementById('foodInfoHashtag3').value;
    		
    		let hashtag = '#' + hashtag1 + ' #' + hashtag2 + ' #' + hashtag3;
    		
    		document.getElementById('foodInfoHashtag').value = hashtag;
    		
    		return true;
    	}
    </script>
</body>
</html>


