	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="outer">
		<div class="wrap">
			<div class="notice_area">
				<div class="questions_title">
					<h1>문의 검색 결과</h1>
				</div>
				<div class="questions_list">
					<c:forEach var="list" items="${ list }">
						<ul class="notice_ul" onclick="questionsSelect(${list.questionsId});">
							<li class="no">${ list.questionsId }</li>
							<li class="title">${ list.questionsTitle }</li>
							<li class="title">${ list.memberId }</li>
							<li> class="date">${ list.questionsDate }</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			
		</div>
	</div>
	<script>
		function questionsSelect(id){
			location.href = '${contextPath}/notice/detail?nno=' + nno;
		}
	
	</script>



</body>
</html>