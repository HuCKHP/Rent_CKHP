<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="UTF-8">
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
		style="background-image: url('<%=request.getContextPath()%>/resources/images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>회원가입 <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">신규회원가입</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section contact-section">
		<div class="container">
			<div class="row d-flex mb-5 contact-info">
				<div class="col-md-8 block-9 mb-md-5">
					<div id="joinform">
					
						<form class="form-group">
							<div style="margin-bottom:20px;">
								<span style="padding-right:100px;"><b>아이디</b></span> <span><input type="text" name="id" required></span>
							</div>
							<div  style="margin-bottom:20px;">
								<span style="padding-right:84px;"><b>비밀번호</b></span> <span><input type="password" name="pass" required></span>
							</div>
							<div  style="margin-bottom:20px;">
								<span style="padding-right:118px;"><b>이름</b></span> <span><input type="text" name="name" required></span>
							</div>
							<div  style="margin-bottom:20px;">
								<span style="padding-right:87px;"><b>전화번호</b></span> <span><input type="tel" name="tel" id="tel"
									placeholder="010-0000-0000" required
									pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" maxlength="13"
									onkeyup="keyevent();" required></span>
							</div>
							<div  style="margin-bottom:20px;">
								<span style="padding-right:85px;"><b>생년월일</b></span> <span> <select name="yy" id="year"></select>년
									<select name="mm" id="month"></select>월 <select name="dd"
									id="day"></select>일
								</span>
							</div>
							<div  style="margin-bottom:20px;" >
								<span style="padding-right:98px;"><b>주 소</b></span>
								<span class="col-md-2 offset-md-0">
									<input type="text" name="postcode"
										id="postcode" placeholder="우편번호" readonly />
								</span>
								<span class="col-md-2 postcode-btn">
									<button type="button" class="btn btn-info m-btn--air"
										onclick="execDaumPostcode()">우편번호 찾기</button>
								</span>
								<div style="margin-left:150px;">
									<input type="text"  name="address" id="address" placeholder="도로명 주소" style="width:360px;"readonly />
								</div>
								<div style="margin-left:150px;">
									<input type="text" name="detailAddress" placeholder="상세 주소" style="width:360px;" required />
								</div>
							</div>
							<div  style="margin-bottom:20px;">
								<span style="padding-right:110px;"><b>성 별</b></span> 
								<span>남자<input type="radio" name="gender"value="M"> 
									   여자<input type="radio" name="gender" value="W"></span>
							</div>
							<div  style="margin-bottom:20px;">
								<span style="padding-right:100px;"><b>이메일</b></span>
								<span> 
									<input type="text" name="emailId">
									<input class="box" id="domain-txt" type="text" /> 
									<select class="box" id="domain-list">
											<option value="type">직접 입력</option>
											<option value="google.com">google.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="kakao.com">kakao.com</option>
									</select>
								</span>
							</div>
						</form>
						
						<input type="button" value="가입하기"
							class="btn btn-primary py-3 px-5">
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div id="map" class="bg-white"></div>
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
						<script>document.write(new Date().getFullYear());</script>
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
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAD3NDCFvTLCdUFtWJXoV54L0a07IhAC4E&callback=initMap&region=kr">  </script>
	<script src="<%=request.getContextPath()%>/resources/js/google-map.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

	<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
	<script
		src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>

</body>
<script type="text/javascript">
	const domainListEl = document.querySelector('#domain-list')
	const domainInputEl = document.querySelector('#domain-txt')
	var tel = document.getElementById('tel');
	keyevent = () => {
		tel.value = autoHypenPhone(tel.value);
	}
	function autoHypenPhone(str){
	      str = str.replace(/[^0-9]/g, '');
	      var tmp = '';
	      if( str.length < 4){
	        return str;
	      }else if(str.length < 7){
	        tmp += str.substr(0, 3);
	        tmp += '-';
	        tmp += str.substr(3);
	        return tmp;
	      }else if(str.length < 11){
	        tmp += str.substr(0, 3);
	        tmp += '-';
	        tmp += str.substr(3, 3);
	        tmp += '-';
	        tmp += str.substr(6);
	        return tmp;
	      }else{
	        tmp += str.substr(0, 3);
	        tmp += '-';
	        tmp += str.substr(3, 4);
	        tmp += '-';
	        tmp += str.substr(7);
	        return tmp;
	      }
	      return str;
	    }
	
	
	/* 생년월일 select  */
	$(document).ready(function(){            
	    var now = new Date();
	    var year = now.getFullYear();
	    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
	    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
	    //년도 selectbox만들기               
	    for(var i = 1920 ; i <= year ; i++) {
	        $('#year').append('<option value="' + i + '">' + i + '년</option>');    
	    }

	    // 월별 selectbox 만들기            
	    for(var i=1; i <= 12; i++) {
	        var mm = i > 9 ? i : "0"+i ;            
	        $('#month').append('<option value="' + mm + '">' + mm + '월</option>');    
	    }
	    
	    // 일별 selectbox 만들기
	    for(var i=1; i <= 31; i++) {
	        var dd = i > 9 ? i : "0"+i ;            
	        $('#day').append('<option value="' + dd + '">' + dd+ '일</option>');    
	    }
	    $("#year  > option[value="+year+"]").attr("selected", "true");        
	    $("#month  > option[value="+mon+"]").attr("selected", "true");    
	    $("#day  > option[value="+day+"]").attr("selected", "true");       
	  
	})
	
	/* 버튼을 클릭하여 execDaumPostcode() 함수가 호출되면서 주소 검색 팝업창이 보여지게 합니다.
	     팝업창에서 주소 검색 결과 항목을 클릭했을 때 우편번호와 도로명주소 입력란에 값을 채워넣게 됩니다. */
	
	function execDaumPostcode() {
    	daum.postcode.load(function(){
        	new daum.Postcode({
            	oncomplete: function(data) {
              	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
              	$("#postcode").val(data.zonecode);
             	 $("#address").val(data.roadAddress);
            	}
        	}).open();
    	});
	}
	
	// select 옵션 변경 시
	domainListEl.addEventListener('change', (event) => {
	  // option에 있는 도메인 선택 시
	  if(event.target.value !== "type") {
	    // 선택한 도메인을 input에 입력하고 disabled
	    domainInputEl.value = event.target.value
	    domainInputEl.disabled = true
	  } else { // 직접 입력 시
	    // input 내용 초기화 & 입력 가능하도록 변경
	    domainInputEl.value = ""
	    domainInputEl.disabled = false
	  }
	})
	
</script>
</html>