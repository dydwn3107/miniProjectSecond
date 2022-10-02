<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	#titles h2 {
		display:inline-block;
	}

	#titlesFirstH2 {
		color: gray;
		margin-top: 10px;
	}

	#titlesSecondH2 {
		margin-left: 50px;
		color: black;
	}
</style>

</head>
<body>
	<br><br>
	
<!-- 모집글 수정 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty projectStudyUpdateMessage}">
		<div class="alert alert-primary" role="alert">${projectStudyUpdateMessage}</div>
	</c:if>
	
<!-- 모집글 삭제 실패 시. 돌아왔을때 실패메세지 alert -->
	<c:if test="${not empty projectStudyDeleteMessage}">
		<div class="alert alert-primary" role="alert">${projectStudyDeleteMessage}</div>
	</c:if>
	
		
	<div id="allContainer">
		
		<!-- start 프로젝트/스터디 기본 정보 -->
		<div style="margin: 50px 20% 30px 20%;">
			<h1 class="display-3" style="overflow: hidden; text-overflow: ellipsis; word-wrap : break-word;
			white-space : normal; display: -webkit-box; -webkit-line-clamp: 4; -webkit-box-orient: vertical;">
				${card.projectStudyTitle}
			</h1>
			<br>
			
			<div class="media">
				<img class="mr-3 rounded-circle"
					src="images/projectStudyprofile.jpg"
					alt="Generic placeholder image" style="max-width:50px">
				<div class="media-body" style="padding-top:10px; font-weight: bold">
					<large class="my-0 text-black d-block">${card.memberId}</large>
				</div>
			</div>
								
		</div>
		<hr style="width:60%; margin: 20px auto 0 auto;">
		
		<br><br>
		
		<div class="ui two column stackable grid container" style="width: 60%">
		<div class="column" id="titles">
			<div class="ui segment">
				<h3 style="display:inline-block" id="titlesFirstH2">모집 구분</h3>
				<h3 style="display:inline-block" id="titlesSecondH2">${card.projectStudyType}</h3>
			</div>
		</div>
			
			<div class="column" id="titles">
				<div class="ui segment">
					<h3 style="display:inline-block" id="titlesFirstH2">진행 방식</h3>
					<h3 style="display:inline-block" id="titlesSecondH2">${card.projectStudyonoffline}</h3>
				</div>
			</div>
			
			<div class="column" id="titles">
				<div class="ui segment">
					<h3 style="display:inline-block" id="titlesFirstH2">모집 인원</h3>
					<h3 style="display:inline-block" id="titlesSecondH2">${card.projectStudyPersonNum}</h3>
				</div>
			</div>
			
			<div class="column" id="titles">
				<div class="ui segment">
					<h3 style="display:inline-block" id="titlesFirstH2">시작 예정</h3>
					<h3 style="display:inline-block" id="titlesSecondH2">${card.projectStudyStartDate}</h3>
				</div>
			</div>
			
			<div class="column" id="titles">
				<div class="ui segment">
					<h3 style="display:inline-block" id="titlesFirstH2">연락 방법</h3>
					<h5 style="display:inline-block" id="titlesSecondH2">
						${card.projectStudyContact}
					</h5>
				</div>
			</div>
			
			<div class="column" id="titles">
				<div class="ui segment">
					<h3 style="display:inline-block" id="titlesFirstH2">예상 기간</h3>
					<h3 style="display:inline-block" id="titlesSecondH2">${card.projectStudyPeriod}</h3>
				</div>
			</div>
			
			<div class="column" id="titles">
				<div class="ui segment">
					<h3 style="display:inline-block" id="titlesFirstH2">사용 언어</h3>
					<h3 style="display:inline-block" id="titlesSecondH2">${card.projectStudyLanguage}</h3>
				</div>
			</div>
		</div>
		<!-- end 프로젝트/스터디 기본 정보 -->
		
		<br><br>
		
		<!-- start 프로젝트/스터디 소개 -->
		<div style="margin: 50px 20% 30px 20%;">
			<h1>
				${card.projectStudyType} 소개
			</h1>
		</div>
		<hr style="width:60%; margin: 20px auto 0 auto;">
		<br>
		
		<div class="ui one column stackable grid container">
			<div class="column">
				<div class="ui bottom attached segment" style="height:500px; color: black; font-size: 20px; font-weight: bold; border-radius:10px">
					${card.projectStudySubject}
				</div>
				<div align="right">
					<!--   수정 -> 수정 폼으로 값 들고 넘길 form태그 -->
					<form id="projectStudyToEditForm" action="projectStudyUpdateForm.do">
						<input type="hidden" id="projectStudyId" name="projectStudyId" value="${card.projectStudyId}">
						<input type="hidden" id="projectStudyType" name="projectStudyType" value="${card.projectStudyType}">
						<input type="hidden" id="projectStudyonoffline" name="projectStudyonoffline" value="${card.projectStudyonoffline}">
						<input type="hidden" id="projectStudyPersonNum" name="projectStudyPersonNum" value="${card.projectStudyPersonNum}">
						<input type="hidden" id="projectStudyStartDate" name="projectStudyStartDate" value="${card.projectStudyStartDate}">
						<input type="hidden" id="projectStudyContact" name="projectStudyContact" value="${card.projectStudyContact}">
						<input type="hidden" id="projectStudyPeriod" name="projectStudyPeriod" value="${card.projectStudyPeriod}">
						<input type="hidden" id="projectStudyLanguage" name="projectStudyLanguage" value="${card.projectStudyLanguage}">
						<input type="hidden" id="projectStudyTitle" name="projectStudyTitle" value="${card.projectStudyTitle}">
						<input type="hidden" id="projectStudySubject" name="projectStudySubject" value="${card.projectStudySubject}">
						<h5>
							<input type="button" value="목록" onclick="location.href='projectStudyCard.do'">&nbsp;&nbsp;
							<!-- 본인 글은 수정삭제 가능, 타인글은 관리자만 삭제가능 -->
							<c:choose>
								<c:when test="${memberId eq card.memberId}">
									<input type="button" value="수정" onclick="editAndDelete('edit')">&nbsp;&nbsp;
									<input type="button" value="삭제" onclick="editAndDelete('delete')">&nbsp;&nbsp;
								</c:when>
								<c:otherwise>
									<c:if test="${memberAuthor eq 'ADMIN'}">
										<input type="button" value="삭제" onclick="editAndDelete('delete')">&nbsp;&nbsp;
									</c:if>
								</c:otherwise>
							</c:choose>
						</h5>
					</form>
				</div>
				<div>
					<!-- 삭제할 때 넘기는 form태그 -->
					<form id="projectStudyToDelete" action="projectStudyDelete.do">
						<input type="hidden" id="projectStudyId" name="projectStudyId" value="${card.projectStudyId}">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end 프로젝트/스터디 소개 -->
	
	<br><br>

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
	
		// 수정,삭제 버튼 클릭 시 값들고 서버로 전송 
		function editAndDelete(type) {

			switch (type) {
				case 'edit':
					projectStudyToEditForm.submit();
					break;
				case 'delete':
					projectStudyToDelete.submit();
			}
		}
		
	</script>
</body>
</html>
	
</body>
</html>