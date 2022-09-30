<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<style>
.tableBack {
	background-image: url("css1/images/tableBack.jpg");
	background-position: right bottom;
}

.table-dark {
	text-align: center;
}

.member {
	width: 900px;
	background-color: #fff;
	border-collapse: collapse;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	border-radius: 5px;
	overflow: hidden;
}

.member caption {
	font-size: 20px;
	margin-bottom: 30px;
}

.member tr {
	border-bottom: 1px solid #eee;
}

.member tr:last-child {
	border: none;
}

.member tr:nth-child(odd) {
	background-color: #ddd;
}

.member th, .member td {
	padding: 12px;
	text-align: center;
}

.member tr th {
	background-color: black;
	color: #fff;
}

.member tr th:first-child {
	border-radius: 5px 0 0 0;
}

.member tr th:last-child {
	border-radius: 0 5px 0 0;
}

.member tr td:last-child {
	color: crimson;
	font-weight: 500;
}
</style>

</head>

<body>



	<form id="mtd" method="post">
		<div class="tableBack">
			<div class="container" align="center">
				<br>
				<table class="member">
					<thead>
						<tr>
							<th colspan="5" style="font-size: 20px">
								${member.memberName}님의 MyPage</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>ID</td>
							<td colspan="4"><input type="text" id="memberId"
								name="memberId" value="${member.memberId}" readonly="readonly" /></td>


						</tr>
						<tr>
							<td>이름</td>
							<td colspan="4"><input type="text" id="memberName"
								name="memberName" value="${member.memberName}" /></td>

						</tr>
						<tr>
							<td>비밀번호</td>
							<td colspan="4"><input type="password" id="memberPw"
								name="memberPw" value="${member.memberPw}" /></td>

						</tr>

						<tr>
							<td>이메일</td>
							<td colspan="4"><input type="email" id="memberEmail"
								name="memberEmail" value="${member.memberEmail}" /></td>

						</tr>
						<tr>
							<td>연락처</td>
							<td colspan="4"><input type="text" id="memberTel"
								name="memberTel" value="${member.memberTel}" /></td>

						</tr>
						<tr>
							<td>주소</td>
							<td colspan="4"><input type="text" id="memberAddress"
								name="memberAddress" value="${member.memberAddress}" /></td>

						</tr>
						<tr>
							<td>생년월일</td>
							<td colspan="4"><input type="text" id="memberBirth"
								name="memberBirth" value="${member.memberBirth}" /></td>

						</tr>
						<tr>
							<td>가입날짜</td>
							<td colspan="4">${member.memberCreateDate}</td>

						</tr>
						<tr>
							<td>권한</td>
							<td colspan="4">${member.memberAuthor}</td>

						</tr>
						<tr>
							<td>포인트</td>
							<td colspan="4">${member.memberPoint}</td>

						</tr>
						<tr>
							<td colspan="5"><input type="hidden" id="memberId"
								name="memberId" />
								<button type="button" class="btn btn-outline-dark"
									onclick="actionForm('memberUpdate')">회원 정보 수정</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-outline-dark"
									onclick="actionForm('memberDelete')">회원탈퇴</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</form>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<script type="text/javascript">
		function actionForm(str) {
			switch (str) {
			case 'memberUpdate':
				alert('회원수정이 완료 되었습니다!')
				mtd.action = 'memberUpdate.do';
				break;
			case 'memberDelete':
				mtd.action = 'memberDelete.do';
				break;

			}

			mtd.submit();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>

</body>
</html>