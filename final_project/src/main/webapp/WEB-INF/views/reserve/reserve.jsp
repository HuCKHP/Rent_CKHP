<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/animate.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/magnific-popup.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/aos.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/flaticon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/icomoon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href=".">제주<span
				style="color: rgb(190, 175, 175);">도로</span><span
				style="color: rgb(10, 183, 252);">WE</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="." class="nav-link">Home</a></li>
					<li class="nav-item"><a href="reserve" class="nav-link">예약</a></li>
					<li class="nav-item"><a href="pricing" class="nav-link">단기렌트</a></li>
					<li class="nav-item"><a href="cars" class="nav-link">장기렌트</a></li>
					<li class="nav-item"><a href="boardview" class="nav-link">Car뮤니티</a></li>
					<li class="nav-item"><a href="#" class="nav-link">고객지원</a></li>
					<li class="nav-item active"><c:choose>
							<c:when test="${login_id!=null}">
								<a href="logout" class="nav-link">${login_id}님 로그아웃</a>
							</c:when>
							<c:otherwise>
								<a data-toggle="modal" href="#myModal" class="nav-link">로그인</a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 모달시작 -->
	<div class="modal hide" id="myModal">
		<div class="modal-body" style="background-color: blue; margin: auto;">
			<form action="login" method="POST">
				아이디<input type="text" class="body-contents" id="contents" name="id"
					required><br> 비밀번호<input type="text"
					class="body-contents" id="contents" name="pass" required><br>
				<input type="submit" value="로그인" id="login_btn"><input
					type="button" value="회원가입" id="memberjoin_btn"
					onclick="location.href='memberjoinview'">
			</form>
		</div>
	</div>
	<!-- 모달종료 -->
	<!-- END nav -->

	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('<%=request.getContextPath()%>/resources/images/reservemain.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>예약하기 <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">렌트 예약</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-8 block-9 mb-md-5">
					<div id="joinform">
						<form class="form-group">
							<div class="elem-group form">
								<label for="name">아이디</label> <input type="text" id="id"
									name="id" placeholder="${login_id}" readonly>
							</div>

							<div class="elem-group inlined">
								<label for="cartype">차량선택</label> <select onchange="car(this)"
									class="form-control">
									<option>차량선택</option>
									<option value="a">경차</option>
									<option value="b">소형차</option>
									<option value="c">중형차</option>
									<option value="d">준대형차</option>
									<option value="e">대형차</option>
									<option value="f">승합차</option>
									<option value="g">SUV</option>
									<option value="h">전기차</option>
								</select>
							</div>
							<div class="elem-group inlined">
								<label for="">차량 모델</label> 
								<label for="" class="label">차량 모델</label> 
								<select id="carlist" class="form-control" placeholder="City, Airport, Station, etc">
									<option>차량모델을 선택해주세요</option>
                              	<!-- 선택된 기종의 모델 정보 가져오기 -->
                           		</select>
								
							</div>
							<hr>
							<div class="elem-group inlined">
								<label for="">면허 종류</label> <input type="number"
									id="licensetype" name="licensetype" placeholder="2" min="1" max="2" required>
							</div>
							<div class="elem-group inlined">
								<label for="">면허번호</label> <input type="text"
									id="licensenum" name="licensenum" placeholder="AA-BB-CCCCCC-DE" 
									pattern="[0-9]{2}-[0-9]{2}-[0-9]{6}-[0-9]{2}" maxlength="13" required>
							</div>
							<div class="elem-group inlined">
								<label for="rentdate ">대여일</label> <input
									type="date" id="rentdate " name="rentdate " required>
							</div>
							<div class="elem-group inlined">
								<label for="returndate ">반납일</label> <input
									type="date" id="returndate " name="returndate " required>
							</div>
							<div class="elem-group">
								<label for="insurance" style="margin-right:100px;">보험여부</label> 
								네<input type="radio" name="insurance" value="Y"> 
								아니오<input type="radio" name="insurance" value="N">
							</div>
							<hr>
							<div class="elem-group">
								<label for="message">요구사항</label>
								<br>
								<textarea id="message" name="visitor_message" rows="10" cols="50"
									placeholder="특이사항을 입력해주세요"
									required></textarea>
							</div>
						</form>
						<input type="button" value="예약하기"
							class="btn btn-primary py-3 px-5">
					</div>
				</div>
			</div>
	</section>

	<section class="ftco-section ftco-intro"
		style="background-image: url(<%=request.getContextPath()%>/resources/images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-end">
				<div
					class="col-md-6 heading-section heading-section-white ftco-animate">
					<h2 class="mb-3">Do You Want To Earn With Us? So Don't Be
						Late.</h2>
					<a href="#" class="btn btn-primary btn-lg">Become A Driver</a>
				</div>
			</div>
		</div>
	</section>

	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">
							<a href="#" class="logo">제주<span
				style="color: rgb(190, 175, 175);">도로</span><span
				style="color: rgb(10, 183, 252);">WE</span></a>
						</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Information</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">About</a></li>
							<li><a href="#" class="py-2 d-block">Services</a></li>
							<li><a href="#" class="py-2 d-block">Term and Conditions</a></li>
							<li><a href="#" class="py-2 d-block">Best Price
									Guarantee</a></li>
							<li><a href="#" class="py-2 d-block">Privacy &amp;
									Cookies Policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Customer Support</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">FAQ</a></li>
							<li><a href="#" class="py-2 d-block">Payment Option</a></li>
							<li><a href="#" class="py-2 d-block">Booking Tips</a></li>
							<li><a href="#" class="py-2 d-block">How it works</a></li>
							<li><a href="#" class="py-2 d-block">Contact Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourdomain.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.stellar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/aos.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.timepicker.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="<%=request.getContextPath()%>/resources/js/google-map.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

</body>
<script>
	var currentDateTime = new Date();
	var year = currentDateTime.getFullYear();
	var month = (currentDateTime.getMonth() + 1);
	var date = (currentDateTime.getDate() + 1);

	if (date < 10) {
		date = '0' + date;
	}
	if (month < 10) {
		month = '0' + month;
	}

	var dateTomorrow = year + "-" + month + "-" + date;
	var checkinElem = document.querySelector("#checkin-date");
	var checkoutElem = document.querySelector("#checkout-date");

	checkinElem.setAttribute("min", dateTomorrow);

	checkinElem.onchange = function() {
		checkoutElem.setAttribute("min", this.value);
	}
	
	function car(e) {
        var carlist_a = [ "스파크", "케스퍼", "레이", "모닝" ];
        var carlist_b = [ "아반떼 AD", "아이오닉", "벨로스터", "K3", "K3 GT" ];
        var carlist_c = [ "쏘나타", "G70", "K5", "스팅어 2.5", "LF 쏘나타", "BMW X5" ];
        var carlist_d = [ "그랜저2.5", "그랜저3.3", "K7", "K8" ];
        var carlist_e = [ "제네시스 G80", "G90", "G90 리무진 ", "벤츠 E클래스","아우디 A6" ];
        var carlist_f = [ "스타리아", "스타렉스", "카니발", "카니발 KA4" ];
        var carlist_g = [ "포드", "랜드로버", "GV80", "GV70", "싼타페", "투싼", "베뉴" ];
        var carlist_h = [ "볼트", "코나", "GV70", "GV60", "테슬라3", "EV6" ];
        var target = document.getElementById("carlist");
        if (e.value == "a") {
           var d = carlist_a;
        } else if (e.value == "b") {
           var d = carlist_b;
        } else if (e.value == "c") {
           var d = carlist_c;
        } else if (e.value == "d") {
           var d = carlist_d;
        } else if (e.value == "e") {
           var d = carlist_e;
        } else if (e.value == "f") {
           var d = carlist_f;
        } else if (e.value == "g") {
           var d = carlist_g;
        } else if (e.value == "h") {
           var d = carlist_h;
        }
        target.options.length = 0;
        for (x in d) {
           var opt = document.createElement("option");
           opt.value = d[x];
           opt.innerHTML = d[x];
           target.appendChild(opt);
        }
     }

	
	
	
</script>


</html>