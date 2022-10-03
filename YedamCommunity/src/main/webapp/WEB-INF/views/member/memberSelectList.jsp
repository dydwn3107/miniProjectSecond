<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="myPageCSS/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="myPageCSS/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="myPageCSS/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="myPageCSS/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="myPageCSS/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="myPageCSS/css/themify-icons.css" rel="stylesheet">
    
  

    

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
					<li>
                    <a href="memberNotifications.do">
                        <i class="ti-bell"></i>
                        <p>Notifications</p>
                    </a>
                </li>


				</ul>
			</div>
		</div>

	<div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">User Profile</a>
              
              
                
                </div>
                </div>
                </nav>
                
                
              
                <br>
                <br>
                <br>

			 <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">USER LIST</h4>
                                <p class="category">상세페이지를 보려면 <b>클릭</b>하세요.</p>
                                
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Name</th>
                                    	<th>Tel</th>
                                    	<th>Email</th>
                                    	<th>Status</th>
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
									class="card-footer d-block d-md-flex align-items-center d-print-none" align="right">


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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="myPageCSS/js/paper-dashboard.js"></script>

	<script src="public/graindashboard/js/graindashboard.js"></script>
<script src="public/graindashboard/js/graindashboard.vendor.js"></script>


</html>
