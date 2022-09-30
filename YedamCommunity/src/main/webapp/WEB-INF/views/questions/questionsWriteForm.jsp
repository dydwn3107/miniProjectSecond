<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreeBoard Insert Form</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>
<script>
	
<%-- form의 textarea에 summernote 적용 --%>
	$(document).ready(
			function() {
				$('#questionsContent').summernote(
						{
							height : 700,
							fontNames : [ '맑은고딕', 'Arial', 'Arial Black',
									'Comic Sans MS', 'Courier New', ],
							fontNamesIgnoreCheck : [ '맑은고딕' ],
							focus : true
						});
			});
</script>
<style>
section.heading-page {
	background-image: url(headercss/images/qna.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}
</style>
</head>



<br>
<body>
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="display-4" style="font-weight: lighter; color: white">문의게시판</h1>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<div align="center">
		<h1>문의게시판 작성</h1>
	</div>
	<br>
	<div>
		<div class="w3-margin-top w3-main"
			style="margin-left: 340px; margin-right: 40px; width: 60%;">
			<form id="questionsInsertForm" action="questionsInsert.do"
				method="post">
				<div class="w3-margin-bottom w3-border">
					<input type="text" name="questionsTitle"
						class="w3-input w3-border w3-white" autofocus
						placeholder="제목을 입력하세요" id="questionsTitle" required="required">
					<input type="hidden" name="memberId" id="memberId"
						value="${memberId }">
				</div>
				<div>
					<textarea name="questionsContent" id="questionsContent"></textarea>
				</div>
				<br>
				<div align="center">
					<input type="submit" value="등록" class="btn btn-outline-dark">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="초기화" class="btn btn-outline-dark">&nbsp;&nbsp;&nbsp;
					<input type="button" value="목록"
						onclick="location.href='questionsSelectList.do'"
						class="btn btn-outline-dark">&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
		<br> <br> <br>


		<form id="fbf" method="post">
			<input type="hidden" id="questionsDate" name="questionsDate"
				value="${vo.questionsDate}">
		</form>
	</div>





	<script>
		document.getElementById('questionsDate').valueAsDate = new Date();
	</script>
	<br>
	<br>
	<br>
	<br>
</body>
</html>