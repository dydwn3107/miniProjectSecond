<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.emoji {
	width: 160px;
	height: 160px;
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
</style>
</head>
<body>
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="display-4" style="font-weight: lighter; color: white">자유게시판
						</h1>
				</div>
			</div>
		</div>
	</section>
	<div align="center">
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br>
		<h1>${message }</h1>
		<img src="images/sad.png" alt="" class="emoji"> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>
		<h2>
			<a href="main.do">HOME</a>
		</h2>
		<br>
		<br>
		<br>
		<br>
	</div>
</body>
</html>