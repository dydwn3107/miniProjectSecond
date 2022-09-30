<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.con {
	max-width: 950px;
}

.con-min-width {
	min-width: 320px;
}

.top-menu a {
	text-decoration: none;
	color: gray;
	font-weight: bold;
	font-size: 1.2rem;
}

html, body {
	overflow-x: hidden;
}

.table-common>table {
	width: 100%;
	border-collapse: collapse;
}

.table-common .btn-box {
	text-align: center;
}

.table-common>table th, .table-common>table td {
	border: 1px solid black;
	padding: 10px;
}

.article-list table {
	border: none;
	border-top: 2px solid lightgray;
	border-bottom: 2px solid lightgray;
}

.article-list>table th, .article-list>table td {
	border: none;
}

.article-list>table td {
	border-bottom: 1px solid lightgray;
}

.article-list>table thead {
	border-bottom: 2px solid lightgray;
	background-color: #F5F5F5;
}

.article-detail {
	border: 2px solid lightgray;
}

.article-detail>table {
	border: none;
	width: calc(100% - 100px);
}

.article-detail>table th, .article-detail>table td {
	border: none;
}

.article-detail>table tr:not(:last-child) {
	border-bottom: 1px solid lightgray;
}

.article-detail>table tr:not(.article-body), .article-detail>table tr:not(.article-body)>td
	{
	height: 20px;
	font-size: 0.8rem;
}

.article-detail>table tr.article-title>td {
	height: 40px;
	font-weight: bold;
	font-size: 1.2rem;
}

.article-detail>table td:last-child {
	padding-right: 100px;
}

.article-detail>.article-writer {
	width: 100px;
	height: 102px;
	background-color: lightgray;
	border-bottom: 1px solid lightgray;
	text-align: center;
}

.article-detail>.article-writer .writer-icon {
	margin: 0 auto;
	background-color: white;
	width: 80px;
	height: 80px;
	border-radius: 50%;
}

.reply {
	margin-top: 20px;
	border: 2px solid lightgray;
	padding: 15px;
	box-sizing: border-box;
}

.reply-form {
	padding: 10px;
}

.reply-form>form input[type="text"] {
	width: 200px;
}

.reply-form>form textarea {
	width: calc(100% - 100px);
	min-height: 40px;
}

.reply-form>form input[type="submit"] {
	width: 80px;
	height: 40px;
	transform: translatey(-40%);
}

.reply-form>form>div:not(:last-child) {
	margin-bottom: 5px;
}

.reply-list>table {
	border: none;
}

.reply-list>table th {
	display: none;
}

.reply-list>table td {
	border: none;
}

.reply-list>table tr:nth-child(2n+1) {
	background-color: rgba(0, 0, 0, 0.06);
}

.reply-list>table td:first-child {
	font-weight: bold;
}

.reply-list>table td:first-child::after {
	content: " : ";
	font-weight: bold;
}

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
					<h1 class="display-4" style="font-weight: lighter; color: white">공지사항 상세</h1>
				</div>
			</div>
		</div>
	</section>
	<div align="center">
		<br>
		<br>
		<section class="article-detail table-common con row">
			<div class="article-writer cell">
				<div class="writer-icon"></div>
			</div>
			<table class="cell" border="1">
				<colgroup>
					<col width="100px">
				</colgroup>
				<tbody>
					<tr class="article-title">
						<th>[${vo.noticeBoardId }] 제목</th>
						<td colspan="3">${vo.noticeBoardTitle }</td>
						<th>작성일</th>
						<td>${vo.noticeBoardDate }</td>
					</tr>
					<tr class="article-info">
						<th>조회수</th>
						<td>${vo.noticeBoardHit }</td>
					</tr>
					<tr class="article-body">
						<td colspan="10" height="500px;">${vo.noticeBoardSubject }</td>
					</tr>
				</tbody>
			</table>
		</section>
	</div>
	<br>

	<div align="center">
		<c:if test="${memberAuthor == 'ADMIN'}">
			<button type="button" onclick="subCall('E')"
				class="btn btn-outline-dark">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="subCall('D')"
				class="btn btn-outline-dark">삭제</button>
			&nbsp;&nbsp;
			</c:if>
		<button type="button" onclick="location.href='noticeBoard.do'"
			class="btn btn-outline-dark">목록</button>
	</div>
	<br>
	<br>
	<div>
		<form id="noticeBoardfrm" action="" method="post">
			<input type="hidden" id="id" name="id" value="${vo.noticeBoardId}">
		</form>
	</div>
	<script type="text/javascript">
		function subCall(str) {
			if (str == 'E') {
				noticeBoardfrm.action = "noticeBoardEditForm.do"; // 수정
			} else if (str == 'D') {
				noticeBoardfrm.action = "noticeBoardDelete.do"; // 삭제
			}
			noticeBoardfrm.submit();
		}
	</script>
</body>
</html>