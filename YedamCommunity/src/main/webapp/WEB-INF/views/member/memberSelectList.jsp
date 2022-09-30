<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="css9/main.css" />
<noscript>
	<link rel="stylesheet" href="css9/noscript.css" />
</noscript>
<style>
.tableBack {
	background-image: url("css1/images/tableBack.jpg");
}

.table-dark {
	text-align: center;
}
.alt>thead>tr>th {
	background-color: black;
	font-weight: bold;
	font-size: 16px;
}
}
</style>
</head>
<body>
	<div align="center" class="tableBack">
		<div><br><br>
			<div class="container">
			<br><br>
				<h1>멤버 전체 목록 (자세히 보기는 클릭!)</h1><br><br>
				<div class="table-wrapper">
					<table class="alt">
						<thead>
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>이메일</th>
								<th>주소</th>
								<th>생년월일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${members}" var="member">
								<tr onclick="selectMember('${member.memberId}')"
									onMouseover="this.style.backgroundColor='#E2E2E2';"
									onMouseout="this.style.backgroundColor='white';">
									<td width="80px">${member.memberId}</td>
									<td>${member.memberName}</td>
									<td width="150px">${member.memberTel}</td>
									<td>${member.memberEmail}</td>
									<td width="250px">${member.memberAddress }</td>
									<td>${member.memberBirth }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<br>

		<div>
			<form id="msl" method="post">
				<input type="hidden" id="memberId" name="memberId">
			</form>
		</div>

		<div>
			<small><a href="memberSelectList.do">◀ 1 2 3 4 5 ▶</a></small>
		</div>
	</div>
	<br>
	<script type="text/javascript">
		function selectMember(id) {
			document.getElementById('memberId').value = id
			msl.action = "memberSelect.do";
			msl.submit();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
</body>
</html>