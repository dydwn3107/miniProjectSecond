<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>

<style>
.tableBack {
	background-image: url("css1/images/tableBack.jpg");
}

}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
}

.board-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.optionBox {
	margin-left: 275px;
}

section.heading-page {
	background-image: url(headercss/images/freeBoardHeader.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}
/* 페이징css */
.page_wrap {
	text-align: center;
	font-size: 0;
}

.page_nation {
	display: inline-block;
}

.page_nation .none {
	display: none;
}

.page_nation a {
	display: block;
	margin: 0 3px;
	float: left;
	border: 1px solid #e6e6e6;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	background-color: #fff;
	font-size: 13px;
	color: #999999;
	text-decoration: none;
}

.page_nation .arrow {
	border: 1px solid #ccc;
}

.page_nation .pprev {
	background: #f8f8f8 url('images/page_pprev.png') no-repeat center center;
	margin-left: 0;
}

.page_nation .prev {
	background: #f8f8f8 url('images/page_prev.png') no-repeat center center;
	margin-right: 7px;
}

.page_nation .next {
	background: #f8f8f8 url('images/page_next.png') no-repeat center center;
	margin-left: 7px;
}

.page_nation .nnext {
	background: #f8f8f8 url('images/page_nnext.png') no-repeat center center;
	margin-right: 0;
}

.page_nation a.active {
	background-color: #42454c;
	color: #fff;
	border: 1px solid #42454c;
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

	<!-- board seach area -->
	<!-- 	<div id="board-search">
		<div class="container">
			<div class="search-window">
				<form id="searchfrm" method="post" action="ajaxFreeBoardSearch.do">
					<select class="optionBox" id="key" name="key">
						<option value="0">전체</option>
						<option value="1">제목</option>
						<option value="2">작성자</option>
					</select>
					<div class="search-wrap">
						<input id="val" type="text" name="val" placeholder="검색어를 입력해주세요.">
						<button onclick="searchCall()" type="submit" class="btn btn-dark">검색</button>
					</div>
				</form>
			</div>
		</div>
	</div> -->

	<!-- board seach area -->
	<div id="board-search">
		<div class="container">
			<div class="search-window">
				<div class="search-wrap">
					<form id="searchfrm" method="post" action="ajaxFreeBoardSearch.do">
						<select id="key" name="key">
							<option value="0">전체</option>
							<option value="1">제목</option>
							<option value="2">작성자</option>
						</select> <input type="text" id="val" name="val" placeholder="검색어를 입력해주세요.">&nbsp;&nbsp;
						<input type="button" onclick="searchCall()" value="검색"
							class="btn btn-dark" style="width: 100px; margin-top: 31px;">
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- board list area -->
	<div id="board-list">
		<div class="container">
			<table class="board-table">
				<thead>
					<tr>
						<th width="70">글번호</th>
						<th width="250">제목</th>
						<th width="150">작성자</th>
						<th width="150">작성일자</th>
						<th width="70">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty freeBoards }">
						<td colspan="6">게시글이 존재하지 않습니다.</td>
					</c:if>
					<c:if test="${not empty freeBoards }">
						<c:forEach items="${freeBoards }" var="m">
							<tr onclick="selectFreeBoard(${m.freeBoardId})"
								onMouseover="this.style.backgroundColor='#E2E2E2';"
								onMouseout="this.style.backgroundColor='white';">
								<td>${m.freeBoardId }</td>
								<th><div align="center">
										<span class="d-inline-block text-truncate"
											style="max-width: 200px;"> ${m.freeBoardTitle }</span>
									</div></th>
								<td>${m.memberId }</td>
								<td>${m.freeBoardDate }</td>
								<td>${m.freeBoardHit }</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<br> <br>
			<div align="center">
				<form id="frm" action="freeBoardSelect.do" method="post">
					<input type="hidden" id="id" name="id">
					<c:if test="${not empty memberId}">
						<button type="button"
							onclick="location.href='freeBoardInsertForm.do'"
							class="btn btn-outline-dark">글쓰기</button>
					</c:if>
				</form>
				<br>
				<div class="page_wrap">
					<div class="page_nation">
						<a class="arrow pprev" href="#"></a> <a class="arrow prev"
							href="#"></a> <a href="#" class="active">1</a> <a href="#">2</a>
						<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
						<a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a>
						<a class="arrow next" href="#"></a> <a class="arrow nnext"
							href="#"></a>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div>
			<form id="fbf" name="fbf" method="post">
				<input type="hidden" id="freeBoardId" name="freeBoardId">
			</form>
		</div>
	</div>

	<script type="text/javascript">
	function selectFreeBoard(id) {
		document.getElementById("freeBoardId").value = id;
		fbf.action = "freeBoardSelect.do";
		fbf.submit();
	}
	function freeBoardSelect(id) {
		document.getElementById("freeBoardId").value = id;
		console.log(id);
		fbf.action="freeBoard.do";
		fbf.submit();
	}
	function searchCall(){
		let key = document.getElementById("key").value;
		let val = document.getElementById("val").value;
		let payload = 'key='+key+'&val='+val;
		fetch("ajaxFreeBoardSearch.do?"+payload)
			.then(response => response.json())
			.then(json => htmlViews(json)); //화면에 출력
	}
	
	function htmlViews(datas) {  //json을 html로 변환해서 화면에 뿌림
		document.querySelector('tbody').remove();  //<tbody> 삭제
		const container = document.createElement('tbody'); //<tbod>태그 생성
		container.innerHTML = datas.map(data => createHTMLString(data)).join("");  //Html 변환
		document.querySelector('table').appendChild(container);  //화면에 추가
	}
	
	function createHTMLString(data){  //html 변환 코드 css, event Listner를 활용하면 깔끔하게 정리됨
		//if(data.noticeAttech == null) data.noticeAttech = ""; //json 객체에서 null값을 ""로대체
		let str = "<tr onclick=";
			str += "selectFreeBoard('"+ data.freeBoardId +"')" +">";
			str += "<td>" + data.freeBoardId + "</td>";
			str += "<td>" + data.freeBoardTitle + "</td>";
			str += "<td>" + data.memberId + "</td>";
			str += "<td>" + data.freeBoardDate + "</td>";
			str += "<td>" + data.freeBoardHit + "</td></tr>";
			
		return str;
	}
</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
	
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>

</body>
</html>