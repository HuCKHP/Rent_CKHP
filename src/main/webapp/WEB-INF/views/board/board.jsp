<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/animate.css">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/css/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/icomoon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">

        <link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700&display=swap" rel="stylesheet">



    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker.css">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/flaticon/font/flaticon.css">

    




 
  </head>
  <body>
  	
     <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
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
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('<%=request.getContextPath()%>/resources/images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Services <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">이용후기</h1>
          </div>
        </div>
      </div>
    </section>
	<section>
	
	<hr>
	<div></div>
    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay innerpage" style="background-image: url('images/hero_2.jpg')">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 text-center">
              <h1> 제주도로WE 이용후기 </h1>
              <p>실 이용객들의 생생한 탑승후기</p>
            </div>
          </div>
        </div>
      </div>
    </div>

	<c:forEach items="${bList}" var="bvo">  
		
		<div class="row">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="post-entry-1 h-100">
              <a href="single.html">
                <img src="" alt="Image"
                 class="img-fluid">
              </a>
              <div class="post-entry-1-contents">
                console.log(${bvo.title });
                <h2><a href="single.html">${bvo.title }</a></h2>
                <span class="meta d-inline-block mb-3">July 17, 2019 <span class="mx-2">by</span> <a href="#">Admin</a></span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores eos soluta, dolore harum molestias consectetur.</p>
              </div>
            </div>
          </div>
	</c:forEach>



    
          <div class="col-12">
            <span class="p-3"></span>
           		<c:if test="${pageVO.prev}">
 					<a href="bbsList?page=${pageVO.startPage -1}">이전 페이지 그룹  </a>		
         		</c:if>
         	
         		<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
         			<c:if test="${pageVO.page == idx}" color="blue"></c:if>
         			<a href="bbsList?page=${idx}" }>${idx}</a>
         		
         		</c:forEach>   
         		<c:if test="${pageVO.next}">
 					<a href="bbsList?page=${pageVO.endPage +1}"> 다음 페이지 그룹</a>        		
 					
         		</c:if>         		      	

          </div>
        </div>
      </div>
    </div>

    <div class="container site-section mb-5">
      

    </div>
	
	</section>

      
      
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2"><a href="#" class="logo">Car<span>book</span></a></h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
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
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy &amp; Cookies Policy</a></li>
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
                   <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                   <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                   <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                 </ul>
               </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery-migrate-3.0.1.min.js"></script>

  <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.easing.1.3.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/aos.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/jquery.timepicker.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<%=request.getContextPath()%>/resources/js/google-map.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
    
  </body>
</html>