<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="myPageCSS/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="myPageCSS/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Paper Dashboard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="myPageCSS/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="myPageCSS/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="myPageCSS/css/paper-dashboard.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="myPageCSS/css/themify-icons.css" rel="stylesheet">

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">

			<!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="main.do" class="simple-text"> Yedam Community </a>
				</div>

				<ul class="nav">
					<li><a href="dashboard.do"> <i class="ti-panel"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="#"> <i class="ti-user"></i>
							<p>User Profile</p>
					</a></li>
					<li><a href="memberSelectList.do"> <i
							class="ti-view-list-alt"></i>
							<p>USERS</p>
					</a></li>

					<li class="active"><a href="memberNotifications.do"> <i
							class="ti-bell"></i>
							<p>Notifications</p>
					</a></li>

				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
							<span class="icon-bar bar3"></span>
						</button>
						<a class="navbar-brand" href="#">Notifications</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="ti-panel"></i>
									<p>Stats</p>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="ti-bell"></i>
									<p class="notification">5</p>
									<p>Notifications</p> <b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Notification 1</a></li>
									<li><a href="#">Notification 2</a></li>
									<li><a href="#">Notification 3</a></li>
									<li><a href="#">Notification 4</a></li>
									<li><a href="#">Another notification</a></li>
								</ul></li>
							<li><a href="#"> <i class="ti-settings"></i>
									<p>Settings</p>
							</a></li>
						</ul>

					</div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card ">
								<div class="header">
									<h3 class="title">
										<b>&nbsp;&nbsp;회원 문의사항</b>
									</h3>
									<p class="category">&nbsp;&nbsp;&nbsp;&nbsp;자세히 보려면 click 하세요.</p>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover">
										<thead>
											<td align="center"><b>No</b></td>
											<td align="center"><b>아이디</b></td>
											<td align="center"><b>제목</b></td>
											<td align="center"><b>내용</b></td>
											<td align="center"><b>작성일자</b></td>
										</thead>
										<tbody>
											<c:if test="${empty list }">
												<tr>
													<td colspan="5">게시글이 존재하지 않습니다.</td>
												</tr>
											</c:if>
											<c:if test="${not empty list }">
												<c:forEach items="${list }" var="n">
													<tr
														onMouseover="this.style.backgroundColor='grey', this.style.color='white'"
														onMouseout="this.style.backgroundColor='white',this.style.color='black'"
														onclick="questionsSelect('${n.questionsId}')">
														<td align="center">${n.questionsId }</td>
														<td align="center">${n.memberId }</td>
														<td align="center">${n.questionsTitle }</td>
														<td align="center">${n.questionsContent}</td>
														<td align="center">${n.questionsDate }</td>

														<td><script>
															document
																	.write(timestamp('${n.questionsDate}'));
														</script></td>

													</tr>
												</c:forEach>
											</c:if>
										</tbody>
									</table>

								</div>
							</div>
						</div>


						<footer class="footer">
							<div class="container-fluid">
								<nav class="pull-left">
									<ul>

										<li><a href="http://www.creative-tim.com"> Creative
												Tim </a></li>
										<li><a href="http://blog.creative-tim.com"> Blog </a></li>
										<li><a href="http://www.creative-tim.com/license">
												Licenses </a></li>
									</ul>
								</nav>
								<div class="copyright pull-right">
									&copy;
									<script>
										document
												.write(new Date().getFullYear())
									</script>
									, made with <i class="fa fa-heart heart"></i> by <a
										href="http://www.creative-tim.com">Creative Tim</a>
								</div>
							</div>
						</footer>

					</div>
				</div>
				<form id="mmn" name="mmn" method="post">
					<input type="hidden" id="questionsId" name="questionsId">

				</form>
				</div>
				</div>
				</div>
			
</body>
<script type="text/javascript">
	
		function questionsSelect(id) {
			document.getElementById("questionsId").value = id;
			mmn.action="questionsSelect.do";
			mmn.submit();
		}
</script>		

<!--   Core JS Files   -->
<script src="myPageCSS/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="myPageCSS/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="myPageCSS/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="myPageCSS/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="myPageCSS/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="myPageCSS/js/paper-dashboard.js"></script>



</html>
