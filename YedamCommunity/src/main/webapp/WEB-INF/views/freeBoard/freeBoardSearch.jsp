
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<body>

	<div class="outer">
		<div class="wrap">
			<div class="freeBoard_area">
				<div class="freeBoard_title">
					<h1>문의 검색 결과</h1>
				</div>
				<div class="freeBoard_list">
					<c:forEach var="list" items="${ list }">
						<ul class="freeBoard_ul"
							onclick="freeBoardSelect(${list.freeBoardId});">
							<li class="no">${ list.freeBoardId }</li>
							<li class="title">${ list.freeBoardTitle }</li>
							<li class="title">${ list.memberId }</li>
							<li class="date">${ list.freeBoardDate }</li>
						</ul>
					</c:forEach>
				</div>
			</div>

		</div>
	</div>

</body>
</html>