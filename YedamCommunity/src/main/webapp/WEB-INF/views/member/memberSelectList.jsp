<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
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

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="myPageCSS/css/demo.css" rel="stylesheet" />

<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="myPageCSS/css/themify-icons.css" rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon" href="public/img/favicon.ico">

<!-- Template -->
<link rel="stylesheet"
	href="public/graindashboard/css/graindashboard.css">

<style>
.nav{
	display:block;
}
</style>
</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">



			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="main.do" class="simple-text"> Yedam Community </a>
				</div>

				<ul class="nav">
					<li><a href="dashboard.do"> <i class="ti-panel"></i>
							<p>Dashboard</p>
					</a></li>

					<li class="active"><a href="memberSelectList.do"> <i
							class="ti-view-list-alt"></i>
							<p>USERS</p>
					</a></li>


				</ul>
			</div>
		</div>

		<div class="main-panel">
			<br>




			<div class="dropdown mx-3 dropdown ml-2" align="center">
				<a id="profileMenuInvoker" class="header-complex-invoker" href="#"
					aria-controls="profileMenu" aria-haspopup="true"
					aria-expanded="false" data-unfold-event="click"
					data-unfold-target="#profileMenu" data-unfold-type="css-animation"
					data-unfold-duration="300" data-unfold-animation-in="fadeIn"
					data-unfold-animation-out="fadeOut"> <!--img class="avatar rounded-circle mr-md-2" src="#" alt="John Doe"-->
					<span class="mr-md-2 avatar-placeholder">A</span> <span
					class="d-none d-md-block">관리자</span> <i
					class="gd-angle-down d-none d-md-block ml-2"></i>
				</a>
				<ul id="profileMenu"
					class="unfold unfold-user unfold-light unfold-top unfold-centered position-absolute pt-2 pb-1 mt-4 unfold-css-animation unfold-hidden fadeOut"
					aria-labelledby="profileMenuInvoker"
					style="animation-duration: 300ms;">
					<li class="unfold-item unfold-item-has-divider"><a 
						class="unfold-link d-flex  text-nowrap" href="memberLogout.do">
							<span class="unfold-item-icon mr-3"> <i
								class="gd-power-off"></i>
						</span> Sign Out
					</a></li>
				</ul>
			</div>
			<br> <br> <br>


			<div class="content">
				<div class="py-4 px-3 px-md-4">
					<div class="card mb-3 mb-md-4">

						<div class="card-body">
							<!-- Breadcrumb -->
							<nav class="d-none d-md-block" aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Users</a></li>
									<li class="breadcrumb-item active" aria-current="page">All
										Users</li>
								</ol>
							</nav>
							<!-- End Breadcrumb -->

							<div class="mb-3 mb-md-4 d-flex justify-content-between">
								<div class="h3 mb-0">&nbsp;Users</div>
							</div>


							<!-- Users -->
							<div class="table-responsive-xl">
								<table class="table text-nowrap mb-0">
									<thead>
										<tr>
											<th class="font-weight-semi-bold border-top-0 py-2">ID</th>
											<th class="font-weight-semi-bold border-top-0 py-2">NAME</th>
											<th class="font-weight-semi-bold border-top-0 py-2">TEL</th>
											<th class="font-weight-semi-bold border-top-0 py-2">EMAIL</th>
											<th class="font-weight-semi-bold border-top-0 py-2">Status</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<c:forEach items="${members}" var="member">
												<tr onclick="selectMember('${member.memberId}')"
													onMouseover="this.style.backgroundColor='#E2E2E2';"
													onMouseout="this.style.backgroundColor='white';">
													<td class="align-middle py-3">
														<div class="d-flex align-items-center">
															<div class="position-relative mr-2">
																<span
																	class="indicator indicator-lg indicator-bordered-reverse indicator-top-left indicator-success rounded-circle"></span>
																<!--img class="avatar rounded-circle" src="#" alt="John Doe"-->
																<span class="avatar-placeholder mr-md-2">${member.memberId.substring(0,1) }</span>
															</div>
															${member.memberId }
														</div>
													</td>
													<td class="py-3">${member.memberName}</td>
													<td class="py-3">${member.memberTel}</td>
													<td class="py-3">${member.memberEmail}</td>
													<td class="py-3"><span
														class="badge badge-pill badge-success">Verified</span></td>

												</tr>
											</c:forEach>


										</tr>

									</tbody>
								</table>
								<div
									class="card-footer d-block d-md-flex align-items-center d-print-none">


									<nav class="d-flex ml-md-auto d-print-none"
										aria-label="Pagination">
										<ul
											class="pagination justify-content-end font-weight-semi-bold mb-0">
											<li class="page-item"><a id="datatablePaginationPrev"
												class="page-link" href="#!" aria-label="Previous"><i
													class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>
											</li>
											<li class="page-item d-none d-md-block"><a
												id="datatablePaginationPage0" class="page-link active"
												href="#!" data-dt-page-to="0">1</a></li>
											<li class="page-item d-none d-md-block"><a
												id="datatablePagination1" class="page-link" href="#!"
												data-dt-page-to="1">2</a></li>
											<li class="page-item d-none d-md-block"><a
												id="datatablePagination2" class="page-link" href="#!"
												data-dt-page-to="2">3</a></li>
											<li class="page-item"><a id="datatablePaginationNext"
												class="page-link" href="#!" aria-label="Next"><i
													class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- End Users -->
						</div>
					</div>




					<footer class="footer">
						<div class="container-fluid">
							<nav class="pull-left">
								<ul>

									<li><a href="http://www.creative-tim.com"> Yedam
											Community </a></li>
									<li><a href="http://blog.creative-tim.com"> Blog </a></li>
									<li><a href="http://www.creative-tim.com/license">
											Licenses </a></li>
								</ul>
							</nav>
							<div class="copyright pull-right">
								&copy;
								<script>
									document.write(new Date().getFullYear())
								</script>
								, made with <i class="fa fa-heart heart"></i> by <a
									href="http://www.creative-tim.com">Creative Tim</a>
							</div>
						</div>
					</footer>

					<div>
						<form id="msl" method="post">
							<input type="hidden" id="memberId" name="memberId">
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>



</body>

<script type="text/javascript">
	function selectMember(id) {
		document.getElementById('memberId').value = id
		msl.action = "memberSelect.do";
		msl.submit();
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

<script src="public/graindashboard/js/graindashboard.js"></script>
<script src="public/graindashboard/js/graindashboard.vendor.js"></script>



</html>
