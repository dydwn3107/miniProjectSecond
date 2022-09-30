<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreeBoard Edit Form</title>
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
				$('#content').summernote(
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
	background-image: url(headercss/images/freeBoardHeader.jpg);
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
					<h1 class="display-4" style="font-weight: lighter; color: white">자유게시판</h1>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<div>
		<div class="w3-margin-top w3-main"
			style="margin-left: 340px; margin-right: 40px; width: 60%;">
			<form id="freeBoardEditForm" action="freeBoardEdit.do" method="post"
				enctype="multipart/form-data">
				<div class="w3-margin-bottom w3-border">
					<input type="text" name="board_subject"
						class="w3-input w3-border w3-white" autofocus
						placeholder="제목을 입력하세요" id="freeBoardTitle" required="required"
						value="${vo.freeBoardTitle}">
				</div>
				<div>
					<textarea name="board_content" id="content">${vo.freeBoardSubject}</textarea>
				</div>
				<br>
				<div align="center">
					<input type="hidden" id="freeBoardId" name="freeBoardId"
						value="${vo.freeBoardId}"> <input type="hidden"
						name="memberId" id="memberId" value="${vo.memberId }"> <input
						type="hidden" name="freeBoardHit" id="freeBoardHit"
						value="${vo.freeBoardHit }"> <input type="hidden"
						name="freeBoardLike" id="freeBoardLike"
						value="${vo.freeBoardLike }"> <input type="submit"
						value="완료" class="btn btn-outline-dark"> &nbsp;&nbsp; <input
						type="button" onclick="location.href='freeBoard.do'" value="목록"
						class="btn btn-outline-dark">
				</div>
				<br>
			</form>
		</div>
		<br> <br> <br>
	</div>

	<!--	<div align="center">
		<div><h1>글 수정 페이지</h1></div>
		
		<div>
			<form id="frm" action="freeBoardEdit.do" method="post" enctype="multipart/form-data">
				<div>
					<table border="1">
						<tr>
							<th>작성자</th>
							<td>
								${vo.memberId}
							</td>
							<th>조회수</th>
							<td>
								${vo.freeBoardHit}
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5">
								<input type="text" size="87" id="freeBoardTitle" name="freeBoardTitle" value="${vo.freeBoardTitle}" required="required">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5">
								<textArea rows="10" cols="88" id="freeBoardSubject" name="freeBoardSubject">${vo.freeBoardSubject}</textArea>
							</td>
						</tr>
						  <tr>
							<th>첨부파일</th>
							<td colspan="5">
								<input type="file" id="ufile" name="ufile" onchange="${vo.freeBoardAttech}">
							</td>
						</tr>
					</table>
				</div><br>
			</form>
		</div>
	</div>-->
</body>
</html>