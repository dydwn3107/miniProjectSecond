<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
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

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="myPageCSS/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="myPageCSS/css/themify-icons.css" rel="stylesheet">

	 <!-- Favicon -->
    <link rel="shortcut icon" href="public/img/favicon.ico">

    <!-- Template -->
    <link rel="stylesheet" href="public/graindashboard/css/graindashboard.css">
    
    </style>
</head>
<body>

<body>
<br>
<br>
<br>
<br>
<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">


    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="main.do" class="simple-text">
                    Yedam Community
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="dashboard.do">
                        <i class="ti-panel"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                 <li>
                    <a href="memberSelectList.do">
                        <i class="ti-view-list-alt"></i>
                        <p>ALL USERS</p>
                    </a>
                </li>
               
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid"  align="right">
               <div class="dropdown mx-3 dropdown ml-2">
                    <a id="profileMenuInvoker" class="header-complex-invoker" href="#" aria-controls="profileMenu" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#profileMenu" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-animation-in="fadeIn" data-unfold-animation-out="fadeOut">
                        <!--img class="avatar rounded-circle mr-md-2" src="#" alt="John Doe"-->
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mr-md-2 avatar-placeholder">A</span>
                        <span class="d-none d-md-block">ADMIN(관리자)</span>
                        <i class="gd-angle-down d-none d-md-block ml-2"></i>
                    </a>

                </div>
                <!-- End User Avatar -->
            </div>
        </nav>
        <br>
        <br>
        <br>
    


	<div class="content">
	
		<div class="container-fluid">
			<div class="row">
			
			<form id="mtd" method="post">
				<div class="col-lg-4 col-md-5">
					<div class="card card-user">
						<div class="image">
							<img src="myPageCSS/img/coding.jpg" alt="..." />
						</div>
						<div class="content">
							<div class="author">
								<img class="avatar border-white"
									src="myPageCSS/img/faces/face-0.jpg" alt="..." />
								<h4 class="title">${member.memberName}<br /> <a href="#"><small>@${member.memberName}</small></a>
								</h4>
							</div>
							<p class="description text-center">
								"I like the way you work it <br> No diggity <br> I
								wanna bag it up"
							</p>
						</div>
						<hr>
						<div class="text-center">
							<div class="row">
								<div class="col-md-3 col-md-offset-1">
									<h5>
										12<br />
										<small>Files</small>
									</h5>
								</div>
								<div class="col-md-4">
									<h5>
										2GB<br />
										<small>Used</small>
									</h5>
								</div>
								<div class="col-md-3">
									<h5>
										24,6$<br />
										<small>Spent</small>
									</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="header">
							<h4 class="title">Team Members</h4>
						</div>
		<div class="content">
			<ul class="list-unstyled team-members">
					
					
						
						
					              <li>
									<div class="row">
										<div class="col-xs-3">
											<div class="avatar">
												<img src="myPageCSS/img/faces/face-0.jpg" alt="Circle Image"
													class="img-circle img-no-padding img-responsive">
											</div>
										</div>
										<div class="col-xs-6">
											전성하 <br /> <span class="text-muted"><small>Offline</small></span>
										</div>

										<div class="col-xs-3 text-right">
											<btn class="btn btn-sm btn-success btn-icon">
											<i class="fa fa-envelope"></i></btn>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-3">
											<div class="avatar">
												<img src="myPageCSS/img/faces/face-0.jpg" alt="Circle Image"
													class="img-circle img-no-padding img-responsive">
											</div>
										</div>
										<div class="col-xs-6">
											이현성 <br /> <span class="text-success"><small>Available</small></span>
										</div>

										<div class="col-xs-3 text-right">
											<btn class="btn btn-sm btn-success btn-icon">
											<i class="fa fa-envelope"></i></btn>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-3">
											<div class="avatar">
												<img src="myPageCSS/img/faces/face-0.jpg" alt="Circle Image"
													class="img-circle img-no-padding img-responsive">
											</div>
										</div>
										<div class="col-xs-6">
											황용주 <br /> <span class="text-danger"><small>Busy</small></span>
										</div>

										<div class="col-xs-3 text-right">
											<btn class="btn btn-sm btn-success btn-icon">
											<i class="fa fa-envelope"></i></btn>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-3">
											<div class="avatar">
												<img src="myPageCSS/img/faces/face-0.jpg" alt="Circle Image"
													class="img-circle img-no-padding img-responsive">
											</div>
										</div>
										<div class="col-xs-6">
											김두영 <br /> <span class="text-danger"><small>Busy</small></span>
										</div>

										<div class="col-xs-3 text-right">
											<btn class="btn btn-sm btn-success btn-icon">
											<i class="fa fa-envelope"></i></btn>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-3">
											<div class="avatar">
												<img src="myPageCSS/img/faces/face-0.jpg" alt="Circle Image"
													class="img-circle img-no-padding img-responsive">
											</div>
										</div>
										<div class="col-xs-6">
											김민지 <br /> <span class="text-danger"><small>Busy</small></span>
										</div>

										<div class="col-xs-3 text-right">
											<btn class="btn btn-sm btn-success btn-icon">
											<i class="fa fa-envelope"></i></btn>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-7">
					<div class="card">
						<div class="header">
							<h4 class="title">"${member.memberName}"님의 회원정보</h4>
						</div>
						<div class="content">
							<form>
								<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label>회사</label> <input type="text"
												class="form-control border-input" disabled
												placeholder="Company" value="예담">
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label>아이디</label> <input type="text"
												class="form-control border-input" placeholder="아이디를 입력해주세요" id="memberId"
								name="memberId"
												value="${member.memberId}" readonly="readonly">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1">비밀번호</label> <input
												type="password" class="form-control border-input" id="memberPw"
								name="memberPw"
												placeholder="비밀번호를 입력해주세요" value="${member.memberPw}" readonly="readonly">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>이름</label> <input type="text"
												class="form-control border-input" id="memberName"
								name="memberName" placeholder="이름을 입력해주세요"
												value="${member.memberName}" readonly="readonly">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>연락처</label> <input type="text"
												class="form-control border-input" id="memberTel"
								name="memberTel" placeholder="전화번호를 입력해주세요"
												value="${member.memberTel}" readonly="readonly">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>주소</label> <input type="text"  id="memberAddress"
								name="memberAddress" class="form-control border-input" placeholder="주소를 입력해주세요"
												value="${member.memberAddress}" readonly="readonly">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label>생년월일</label> <input type="text" id="memberBirth"
								name="memberBirth" class="form-control border-input"
												value="${member.memberBirth}" readonly="readonly">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label>가입날짜</label> <input type="text"
												class="form-control border-input" placeholder="가입날짜"
												value="${member.memberCreateDate}" readonly="readonly">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label>권한</label> <input type="text"
												class="form-control border-input" placeholder="권한"
												value="${member.memberAuthor}" readonly="readonly">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>About Me</label>
											<textarea rows="5" class="form-control border-input"
												placeholder="Here can be your description" value="Mike" readonly="readonly">
Stack : java,Spring,js etc
Github : @abc7777

</textarea>
										<br>
										<br>
										<div align="center">
											
												
													<button type="button" class="btn btn-outline-dark"
									onclick="location.href='memberSelectList.do'">회원목록</button>
											</div>
										</div>
									</div>
								</div>

								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
</form>

			</div>
		</div>
	</div>
	<footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="http://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                               Blog
                            </a>
                        </li>
                        <li>
                            <a href="http://www.creative-tim.com/license">
                                Licenses
                            </a>
                        </li>
                    </ul>
                </nav>
				<div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="#">Yedam Community</a>
                </div>
            </div>
        </footer>



</body>



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
