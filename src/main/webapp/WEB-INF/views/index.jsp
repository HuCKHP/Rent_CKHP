<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
					<li class="nav-item"><a href="#" class="nav-link">예약</a></li>
					<li class="nav-item"><a href="#" class="nav-link">단기렌트</a></li>
					<li class="nav-item"><a href="#" class="nav-link">장기렌트</a></li>
					<li class="nav-item"><a href="boardview" class="nav-link">Car뮤니티</a></li>
					<li class="nav-item"><a href="memberjoinview" class="nav-link">고객지원_회원가입</a></li>
					<li class="nav-item active"><a data-toggle="modal"
						href="#myModal" class="nav-link">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 모달 -->
	<div class="modal hide" id="myModal"
		style="width: 300px; height: 300px; background-color: white; margin: auto;">
		<div class="modal-body">
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
	<!-- END nav -->

	<div class="hero-wrap ftco-degree-bg"
		style="background-image: url('<%=request.getContextPath()%>/resources/images/bg_1.png');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
				<div class="col-lg-8 ftco-animate">
					<div class="text w-100 text-center mb-md-5 pb-md-5">
						<h1 class="mb-4">Fast &amp; Easy Way To Rent A Car</h1>
						<br>
						<p style="font-size: 18px;">제주의 기울어진 산길 확 뚫린 해안도로서 부드러움 실컷 느끼자</p>
						<!--<a href="https://vimeo.com/45830194" class="icon-wrap popup-vimeo d-flex align-items-center mt-4 justify-content-center">
                  <div class="icon d-flex align-items-center justify-content-center">
                     <span class="ion-ios-play"></span>
                  </div>
                  <div class="heading-title ml-5">
                     <span>Easy steps for renting a car</span>
                  </div>-->
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-no-pt bg-light">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-md-12   featured-top">
					<div class="row no-gutters">
						<div class="col-md-4 d-flex align-items-center">
							<form action="#" class="request-form ftco-animate bg-primary"
								style="padding-right: 100px;">
								<h2 style="padding-left: 100px;">빠른 예약</h2>
								<div class="form-group" id="cartype">
									<label for="" class="label">차량 분류</label> <select
										class="form-control">
										<option>차량선택</option>
										<option>경/소형차</option>
										<option>중형차</option>
										<option>준대형차</option>
										<option>대형차</option>
										<option>승합차</option>
										<option>SUV&RV</option>
										<option>전기차</option>
										<option>외제차</option>
										<option>전체보기</option>
									</select>

								</div>
								<div class="form-group">
									<label for="" class="label">차량 모델</label>
									<!-- 선택된 기종의 모델 정보 가져오기 -->
									<input type="text" class="form-control"
										placeholder="City, Airport, Station, etc">
								</div>
								<div class="d-flex">
									<div class="form-group mr-2">
										<label for="" class="label">대여일</label> <input type="text"
											class="form-control" id="book_pick_date" placeholder="Date">
									</div>

									<div class="form-group mr-2">
										<label for="" class="label">Pick-up time</label> <select
											name="time_pick" class="form-control">
											<option value="11">오전 11시</option>
											<option value="12">오후 12시</option>
											<option value="13">오후 1시</option>
											<option value="14">오후 2시</option>
											<option value="15">오후 3시</option>
											<option value="16">오후 4시</option>
											<option value="17">오후 5시</option>
											<option value="18">오후 6시</option>
											<option value="19">오후 7시</option>
										</select>

									</div>
								</div>

								<div class="d-flex">
									<div class="form-group mr-2">

										<label for="" class="label">반납일</label> <input type="text"
											class="form-control" id="book_off_date" placeholder="Date">
									</div>

								</div>
								<div class="form-group">
									<input type="submit" value="렌트하기"
										class="btn btn-secondary py-3 px-4">
								</div>
							</form>
						</div>
						<div class="col-md-8 d-flex align-items-center">
							<div class="services-wrap rounded-right w-100">
								<h3 class="heading-section mb-4">Better Way to Rent Your
									Perfect Cars</h3>
								<div class="row d-flex mb-4">
									<div class="col-md-4 d-flex align-self-stretch ftco-animate">
										<div class="services w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="flaticon-route"></span>
											</div>
											<div class="text w-100">
												<h3 class="heading mb-2">Choose Your Pickup Location</h3>
											</div>
										</div>
									</div>
									<div class="col-md-4 d-flex align-self-stretch ftco-animate">
										<div class="services w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="flaticon-handshake"></span>
											</div>
											<div class="text w-100">
												<h3 class="heading mb-2">Select the Best Deal</h3>
											</div>
										</div>
									</div>
									<div class="col-md-4 d-flex align-self-stretch ftco-animate">
										<div class="services w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="flaticon-rent"></span>
											</div>
											<div class="text w-100">
												<h3 class="heading mb-2">Reserve Your Rental Car</h3>
											</div>
										</div>
									</div>
								</div>
								<p>
									<a href="#" class="btn btn-primary py-3 px-4">Reserve Your
										Perfect Car</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>


	<section class="ftco-section ftco-no-pt bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section text-center ftco-animate mb-5">
					<span class="subheading">What we offer</span>
					<h2 class="mb-2">Feeatured Vehicles</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="carousel-car owl-carousel">
						<div class="item">
							<div class="car-wrap rounded ftco-animate">
								<div class="img rounded d-flex align-items-end"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/car-1.jpg);">
								</div>
								<div class="text">
									<h2 class="mb-0">
										<a href="#">Mercedes Grand Sedan</a>
									</h2>
									<div class="d-flex mb-3">
										<span class="cat">Cheverolet</span>
										<p class="price ml-auto">
											$500 <span>/day</span>
										</p>
									</div>
									<p class="d-flex mb-0 d-block">
										<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a
											href="#" class="btn btn-secondary py-2 ml-1">Details</a>
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="car-wrap rounded ftco-animate">
								<div class="img rounded d-flex align-items-end"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/car-2.jpg);">
								</div>
								<div class="text">
									<h2 class="mb-0">
										<a href="#">Mercedes Grand Sedan</a>
									</h2>
									<div class="d-flex mb-3">
										<span class="cat">Cheverolet</span>
										<p class="price ml-auto">
											$500 <span>/day</span>
										</p>
									</div>
									<p class="d-flex mb-0 d-block">
										<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a
											href="#" class="btn btn-secondary py-2 ml-1">Details</a>
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="car-wrap rounded ftco-animate">
								<div class="img rounded d-flex align-items-end"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/car-3.jpg);">
								</div>
								<div class="text">
									<h2 class="mb-0">
										<a href="#">Mercedes Grand Sedan</a>
									</h2>
									<div class="d-flex mb-3">
										<span class="cat">Cheverolet</span>
										<p class="price ml-auto">
											$500 <span>/day</span>
										</p>
									</div>
									<p class="d-flex mb-0 d-block">
										<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a
											href="#" class="btn btn-secondary py-2 ml-1">Details</a>
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="car-wrap rounded ftco-animate">
								<div class="img rounded d-flex align-items-end"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/car-4.jpg);">
								</div>
								<div class="text">
									<h2 class="mb-0">
										<a href="#">Mercedes Grand Sedan</a>
									</h2>
									<div class="d-flex mb-3">
										<span class="cat">Cheverolet</span>
										<p class="price ml-auto">
											$500 <span>/day</span>
										</p>
									</div>
									<p class="d-flex mb-0 d-block">
										<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a
											href="#" class="btn btn-secondary py-2 ml-1">Details</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-about">
		<div class="container">
			<div class="row no-gutters">
				<div
					class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center"
					style="background-image: url(<%=request.getContextPath()%>/resources/images/about.jpg);">
				</div>
				<div class="col-md-6 wrap-about ftco-animate">
					<div class="heading-section heading-section-white pl-md-5">
						<span class="subheading">About us</span>
						<h2 class="mb-4">Welcome to Carbook</h2>

						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia. It is a paradisematic country,
							in which roasted parts of sentences fly into your mouth.</p>
						<p>On her way she met a copy. The copy warned the Little Blind
							Text, that where it came from it would have been rewritten a
							thousand times and everything that was left from its origin would
							be the word "and" and the Little Blind Text should turn around
							and return to its own, safe country. A small river named Duden
							flows by their place and supplies it with the necessary
							regelialia. It is a paradisematic country, in which roasted parts
							of sentences fly into your mouth.</p>
						<p>
							<a href="#" class="btn btn-primary py-3 px-4">Search Vehicle</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading">Services</span>
					<h2 class="mb-3">Our Latest Services</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-wedding-car"></span>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">Wedding Ceremony</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-transportation"></span>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">City Transfer</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-car"></span>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">Airport Transfer</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
						<div class="icon d-flex align-items-center justify-content-center">
							<span class="flaticon-transportation"></span>
						</div>
						<div class="text w-100">
							<h3 class="heading mb-2">Whole City Tour</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
						</div>
					</div>
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


	<section class="ftco-section testimony-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading">Testimonial</span>
					<h2 class="mb-3">Happy Clients</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<div class="item">
							<div class="testimony-wrap rounded text-center py-4 pb-5">
								<div class="user-img mb-2"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/person_1.jpg)">
								</div>
								<div class="text pt-4">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<p class="name">Roger Scott</p>
									<span class="position">Marketing Manager</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap rounded text-center py-4 pb-5">
								<div class="user-img mb-2"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/person_2.jpg)">
								</div>
								<div class="text pt-4">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<p class="name">Roger Scott</p>
									<span class="position">Interface Designer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap rounded text-center py-4 pb-5">
								<div class="user-img mb-2"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/person_3.jpg)">
								</div>
								<div class="text pt-4">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<p class="name">Roger Scott</p>
									<span class="position">UI Designer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap rounded text-center py-4 pb-5">
								<div class="user-img mb-2"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/person_1.jpg)">
								</div>
								<div class="text pt-4">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<p class="name">Roger Scott</p>
									<span class="position">Web Developer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap rounded text-center py-4 pb-5">
								<div class="user-img mb-2"
									style="background-image: url(<%=request.getContextPath()%>/resources/images/person_1.jpg)">
								</div>
								<div class="text pt-4">
									<p class="mb-4">Far far away, behind the word mountains,
										far from the countries Vokalia and Consonantia, there live the
										blind texts.</p>
									<p class="name">Roger Scott</p>
									<span class="position">System Analyst</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Car뮤니티</span>
					<h2>후기 게시판</h2>
					<!-- 더보기 > 게시판으로 넘어가기 -->
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<%=request.getContextPath()%>/resources/images/image_1.jpg');">
						</a>
						<div class="text pt-4">
							<div class="meta mb-3">
								<div>
									<a href="#">Oct. 29, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading mt-2">
								<a href="#">Why Lead Generation is Key for Business Growth</a>
							</h3>
							<p>
								<a href="#" class="btn btn-primary">Read more</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<%=request.getContextPath()%>/resources/images/image_2.jpg');">
						</a>
						<div class="text pt-4">
							<div class="meta mb-3">
								<div>
									<a href="#">Oct. 29, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading mt-2">
								<a href="#">Why Lead Generation is Key for Business Growth</a>
							</h3>
							<p>
								<a href="#" class="btn btn-primary">Read more</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<%=request.getContextPath()%>/resources/images/image_3.jpg');">
						</a>
						<div class="text pt-4">
							<div class="meta mb-3">
								<div>
									<a href="#">Oct. 29, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading mt-2">
								<a href="#">Why Lead Generation is Key for Business Growth</a>
							</h3>
							<p>
								<a href="#" class="btn btn-primary">Read more</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-counter ftco-section img bg-light"
		id="section-counter">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text text-border d-flex align-items-center">
							<strong class="number" data-number="60">0</strong> <span>Year
								<br>Experienced
							</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text text-border d-flex align-items-center">
							<strong class="number" data-number="1090">0</strong> <span>Total
								<br>Cars
							</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text text-border d-flex align-items-center">
							<strong class="number" data-number="2590">0</strong> <span>Happy
								<br>Customers
							</span>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
					<div class="block-18">
						<div class="text d-flex align-items-center">
							<strong class="number" data-number="67">0</strong> <span>Total
								<br>Branches
							</span>
						</div>
					</div>
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
							<a href="#" class="logo">Car<span>book</span></a>
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
</html>
