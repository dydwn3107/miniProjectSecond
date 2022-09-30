<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
				$('#summernote').summernote(
						{
							height : 400,
							fontNames : [ '맑은고딕', 'Arial', 'Arial Black',
									'Comic Sans MS', 'Courier New', ],
							fontNamesIgnoreCheck : [ '맑은고딕' ],
							focus : true
						});
			});
</script>

<style>
section.heading-page {
	background-image: url(headercss/images/notice.jpg);
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
					<h1 class="display-4" style="font-weight: lighter; color: white">공지사항</h1>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<div align="center">
		<div>
			<form id="frm" action="noticeBoardEdit.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th>작성자</th>
							<td>${vo.memberId}</td>
							<th>작성일자</th>
							<td><input type="date" id="noticeBoardDate"
								name="noticeBoardDate" value="${vo.noticeBoardDate}"
								required="required"></td>
							<th>조회수</th>
							<td>${vo.noticeBoardHit}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5"><input type="text" size="87"
								id="noticeBoardTitle" name="noticeBoardTitle"
								value="${vo.noticeBoardTitle}" required="required"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5"><textarea id="summernote" name="editordata"></textarea>
							</td>
						</tr>

					</table>
				</div>
				<br>
				<div>
					<input type="hidden" id="noticeBoardId" name="noticeBoardId"
						value="${vo.noticeBoardId}"> <input type="submit"
						value="수정" class="btn btn-outline-dark">&nbsp;&nbsp; <input
						type="button" onclick="location.href='noticeBoard.do'" value="목록"
						class="btn btn-outline-dark">
				</div>
			</form>
		</div>
		<br>
		<br>
	</div>

</body>
</html>