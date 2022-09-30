<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Template Mo">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>Education - List of Meetings</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="headercss/css/fontawesome.css">
<link rel="stylesheet" href="headercss/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="headercss/css/owl.css">
<link rel="stylesheet" href="headercss/css/lightbox.css">


</head>

<body>
	

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="main.do" class="logo"> Yedam community </a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="main.do">Home</a></li>

							<li class="has-sub"><a href="noticeBoard.do">게시판</a>
								<ul class="sub-menu">
									<li><a href="noticeBoard.do">공지사항</a></li>
									<li><a href="freeBoard.do">자유 게시판</a></li>
									<li><a href="questionsSelectList.do">문의 사항</a></li>
								</ul></li>
							<li class="has-sub"><a href="projectStudy.do">스터디</a>
								<ul class="sub-menu">
									<li><a href="projectStudy.do">스터디 & 프로젝트</a></li>

								</ul></li>

							<li class="has-sub"><a href="infoFood.do">정보 게시판</a>
								<ul class="sub-menu">
									<li><a href="infoCafe.do">스터디 카페</a></li>
									<li><a href="infoFood.do">맛집</a></li>
								</ul></li>
							<li><c:choose>
									<c:when test="${empty memberId }">
										<a href="memberLoginForm.do">로그인 & 회원가입</a>
									</c:when>
									<c:otherwise>
										<li class="has-sub"><a href="#">나의 홈</a>
											<ul class="sub-menu">
												<li><c:if test="${memberAuthor eq 'USER' }">
														<a href="memberMyHome.do">마이페이지</a>

													</c:if> <c:if test="${memberAuthor eq 'ADMIN' }">
														<a href="memberSelectList.do">회원조회</a>

													</c:if></li>
												<li><a href="memberLogout.do">로그아웃</a></li>
											</ul></li>

									</c:otherwise>
								</c:choose></li>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>


	
	<script src="headercss/vendor/jquery/jquery.min.js"></script>


	<script src="headercss/js/isotope.min.js"></script>
	<script src="headercss/js/owl-carousel.js"></script>
	<script src="headercss/js/lightbox.js"></script>
	<script src="headercss/js/tabs.js"></script>
	<script src="headercss/js/isotope.js"></script>
	<script src="headercss/js/video.js"></script>
	<script src="headercss/js/slick-slider.js"></script>
	<script src="headercss/js/custom.js"></script>
	<script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>
</html>
