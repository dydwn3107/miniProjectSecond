<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">

<!-- 이게 어느 script 파일인지 까먹었..Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

<style type="text/css">
select option[value=""][disabled] {
	display: none;
}

section.heading-page {
	background-image: url(headercss/images/projectStudy1.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 220px;
	padding-bottom: 40px;
	text-align: center;
}

</style>

</head>
<body>
	
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="display-4" style="font-weight: lighter; color: white">Project & Study</h1>
				</div>
			</div>
		</div>
	</section>

<!-- 모집글 등록 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty projectStudyInsertMessage}">
		<div class="alert alert-primary" role="alert">${projectStudyInsertMessage}</div>
	</c:if>

	<div id="allContainer">
		<form id="projectStudyInsertForm" action="projectStudyInsert.do">
		
			<!-- start 프로젝트/스터디 기본 정보 -->
			<div align="center" style="margin: 50px auto 30px auto;">
				<h1>
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="green" class="bi bi-1-square-fill" viewBox="0 0 16 16">
			  		<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2Zm7.283 4.002V12H7.971V5.338h-.065L6.072 6.656V5.385l1.899-1.383h1.312Z"/>
					</svg>
					프로젝트/스터디 기본 정보를 입력해주세요.
				</h1>
			</div>
			<hr style="width:70%; margin: 20px auto 0 auto;">
			<br>
			<div class="ui two column stackable grid container">
				<div class="column">
					<div>
						<h4>모집 구분</h4>
					</div>
					<div class="ui segment">
						<select class="form-select form-select-lg" id="projectStudyType" name="projectStudyType" required>
							<option value="" disabled selected>프로젝트/스터디</option>
							<option>프로젝트</option>
							<option>스터디</option>
						</select>
					</div>
				</div>
				<div class="column">
					<div>
						<h4>모집 인원</h4>
					</div>
					<div class="ui segment">
						<select class="form-select form-select-lg" id="projectStudyPersonNum" name="projectStudyPersonNum" required>
							<option value="" disabled selected>인원 미정~10명 이상</option>
							<option>1명</option>
							<option>2명</option>
							<option>3명</option>
							<option>4명</option>
							<option>5명</option>
							<option>6명</option>
							<option>7명</option>
							<option>8명</option>
							<option>9명</option>
							<option>10명 이상</option>
						</select>
					</div>
				</div>
				<div class="column">
					<div>
						<h4>진행 방식</h4>
					</div>
					<div class="ui segment">
						<select class="form-select form-select-lg" id="projectStudyonoffline" name="projectStudyonoffline" required>
							<option value="" disabled selected>온라인/오프라인</option>
							<option>온라인</option>
							<option>오프라인</option>
						</select>
					</div>
				</div>
				<div class="column">
					<div>
						<h4>진행 기간</h4>
					</div>
					<div class="ui segment">
						<select class="form-select form-select-lg" id="projectStudyPeriod" name="projectStudyPeriod" required>
							<option value="" disabled selected>기간 미정~6개월 이상</option>
							<option>기간 미정</option>
							<option>1개월</option>
							<option>2개월</option>
							<option>3개월</option>
							<option>4개월</option>
							<option>5개월</option>
							<option>6개월</option>
							<option>장기</option>
						</select>
					</div>
				</div>
				<div class="column">
					<div>
						<h4>기술 스택 및 개발 언어</h4>
					</div>
					<div class="ui segment">
						<select class="form-select form-select-lg" id="projectStudyLanguage" name="projectStudyLanguage" required>
							<option value="" disabled selected>기술 스택/개발 언어</option>
							<option>Java</option>
							<option>Java, Spring</option>
							<option>Spring</option>
							<option>Spring, Spring Boot</option>
							<option>HTML, CSS</option>
							<option>JavaScript</option>
							<option>HTML, CSS, JavaScript</option>
							<option>JSP</option>
							<option>OracleDB</option>
							<option>SQL</option>
							<option>Git</option>
							<option>전자정부프레임워크</option>
						</select>
					</div>
				</div>
				<div class="column">
					<div>
						<h4>시작 예정일</h4>
					</div>
					<div class="ui segment">
						<input type="date" id="projectStudyStartDate" name="projectStudyStartDate"
							style="width: 100%; height: 42px; font-size: 17px;">
					</div>
				</div>
				<div class="column">
					<div>
						<h4>연락 방법</h4>
					</div>
					<div class="ui segment">
						<select class="form-select form-select-lg" id="contactWay"
							onchange="contactWayPlaceholder()">
							<option value="" disabled selected>연락 방법</option>
							<option>카카오톡 오픈채팅</option>
							<option>이메일</option>
							<option>구글 폼</option>
						</select>
		
					</div>
					<input class="form-control" type="text" placeholder="" id="projectStudyContact" name="projectStudyContact">
				</div>
			</div>
			<!-- end 프로젝트/스터디 기본 정보 -->
			
			<br><br>
			
			<!-- start 프로젝트/스터디 소개 -->
			<div align="center" style="margin: 50px auto 30px auto;">
				<h1>
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="green" class="bi bi-2-square-fill" viewBox="0 0 16 16">
		  			<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2Zm4.646 6.24v.07H5.375v-.064c0-1.213.879-2.402 2.637-2.402 1.582 0 2.613.949 2.613 2.215 0 1.002-.6 1.667-1.287 2.43l-.096.107-1.974 2.22v.077h3.498V12H5.422v-.832l2.97-3.293c.434-.475.903-1.008.903-1.705 0-.744-.557-1.236-1.313-1.236-.843 0-1.336.615-1.336 1.306Z"/>
					</svg>
					프로젝트/스터디에 대해 소개해주세요.
				</h1>
			</div>
			<hr style="width:70%; margin: 20px auto 0 auto;">
			<br>
			<br>
			
			<div class="ui one column stackable grid container">
				<div class="column">
					<div class="ui top attached block header"><h4>제목</h4></div>
					<div class="ui bottom attached segment">
						<input class="form-control form-control-lg" type="text" placeholder="글 제목을 입력해주세요!"
						id="projectStudyTitle" name="projectStudyTitle">
					</div>
				</div>
				<div class="column">
					<div class="ui top attached block header"><h4>내용</h4></div>
					<div class="ui bottom attached segment">
						<textarea class="form-control" id="projectStudySubject" name="projectStudySubject" rows="8" placeholder="프로젝트/스터디에 대해 소개해주세요!"></textarea>
					</div>
				</div>
				<div class="column" align="right">
					<h5>
						<input type="button" value="취소" onclick="location.href='projectStudyCard.do'">&nbsp;&nbsp;
						<input type="submit" value="글 등록"></input>
					</h5>
				</div>
			</div>
		</form>
	</div>
	<!-- end 프로젝트/스터디 소개 -->
	
	<br>

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
	
		// 연락 방법 select태그 값에 따라 아래 input태그 placeholder 안내 문구 바꾸기
		function contactWayPlaceholder(event) {
			let contactWay = document.getElementById('contactWay').value;
			let projectStudyContact = document
					.getElementById('projectStudyContact');

			switch (contactWay) {
			case '카카오톡 오픈채팅':
				projectStudyContact.setAttribute('placeholder', '오픈 카톡방 링크');
				break;
			case '이메일':
				projectStudyContact.setAttribute('placeholder', '이메일 주소');
				break;
			case '구글 폼':
				projectStudyContact.setAttribute('placeholder', '구글 폼 주소');
				break;
			}
		}
		
	</script>
</body>
</html>