<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->

    <title>ZIP-KOK | 집에서 콕 하자!</title>
    <meta name="description" content="">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

      <!-- 반응형 스킨에 PC버전(데스크톱모드)으로 보기 버튼 만들기 -->
      <script>
        function getCookie(name) {
            var cookies = document.cookie.split(";");
            for(var i=0; i<cookies.length; i++) {      
                if(cookies[i].indexOf("=") == -1) {     
                    if(name == cookies[i])     
                        return "";    
                }else {
                   var crumb = cookies[i].split("=");
                   
                    if(name == crumb[0].trim())
                         return unescape(crumb[1].trim());
                }    
            }     
        };
        
        var desktopModeTF = getCookie("DesktopMode")      
        var Scale = getCookie("DesktopModeScale")      
        if (desktopModeTF == "true") {      
        document.write('<meta name="viewport" content="width=1024, user-scalable=yes, initial-scale='+Scale+'">');      
        } else {     
        document.write('<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">')      
        }     
        </script>


    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo/loder2.png">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">



</head>
<body>
     <%
        MemberDTO info=(MemberDTO)session.getAttribute("info");
    
        %>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder2.png" alt="">
                </div>
            </div>
        </div>
    </div>
    
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header ">
                <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            
                            
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo">
                                    <a href="index.jsp"><img src="assets/img/logo/new_logo.png" alt=""></a>
                                </div>
                            </div>
                            
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                    
                                    
                                    
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">                                                                                          
                                                <li class="active" ><a href="index.jsp">Home</a></li>
                                                <li><a href="board.jsp">커뮤니티</a></li>
                                                <li><a href="#">기능</a>
                                                    <ul class="submenu">
                                                        <li><a href="zipkok1.jsp">기능1</a></li>
                                                        <li><a href="zipkok2.jsp">기능2</a></li>
                                                  
                                                    </ul>
                                                </li>
                                                <li><a href="contact.jsp">Contact</a></li>
                                                <c:choose>
													<c:when test="${empty info}">
                                                		<li><a href="login.jsp" style="font-size: 28px " >로그인</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="update.jsp">개인정보수정</a></li>
														<li><a href="LogoutService.do">로그아웃</a></li>
													</c:otherwise>
												</c:choose>
												</ul>    
                                            </ul>
                                        </div>
                                        </nav>     
                                    </div>
                                </div> 
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                            
                        </div>
                    </div>
                </div>             
            </div>     
          </div>
    
        <!-- Header End -->
    </header>

    

    

    <!-- header end -->
    <main>
        <!--? slider Area Start-->
        <section class="slider-area ">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height">
                    <!-- <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-8 col-lg-11 col-md-12">
                                <div class="hero__caption text-center"> 
                                    <a href="#" class="btn hero-btn" data-animation="fadeInUp" data-delay="0.7s">Get Started Now</a>
                                </div>
                            </div>
                        </div>
                    </div> -->         
                </div>
                
        </section>
        <!-- slider Area End-->
        <div class="project-screen">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                    </div>
                </div>
            </div>
        </div>
        <!--? Brand Area Start -->
        <div class="brand-area">
            <div class="container">
                <div class="brand-active brand-border pt-50">
                    <div class="single-brand">
                        <img src="assets/img/gallery/n.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/t.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/w.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/y.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/n.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/t.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/w.png" alt="">
                    </div>
                    <div class="single-brand">
                        <img src="assets/img/gallery/y.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Brand Area End -->
        <!--? Our Services Start -->
        <section class="our-services">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>Finally focus on my marketing strategy and delegate</h2>
                            <p>In the old days, your website was the same for everyone. Not anymore. Experiences lets you adapt your website for every audience.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <img src="assets/img/icon/services1.svg" alt="">
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Design & creatives</a></h5>
                                <p>The automated process starts as soon as your clothes go into.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <img src="assets/img/icon/services2.svg" alt="">
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Design & creatives</a></h5>
                                <p>The automated process starts as soon as your clothes go into.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <img src="assets/img/icon/services3.svg" alt="">
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Design & creatives</a></h5>
                                <p>The automated process starts as soon as your clothes go into.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <img src="assets/img/icon/services4.svg" alt="">
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Design & creatives</a></h5>
                                <p>The automated process starts as soon as your clothes go into.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <img src="assets/img/icon/services5.svg" alt="">
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Design & creatives</a></h5>
                                <p>The automated process starts as soon as your clothes go into.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <img src="assets/img/icon/services6.svg" alt="">
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Design & creatives</a></h5>
                                <p>The automated process starts as soon as your clothes go into.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Our Services End -->
        <!--? About Area  -->
        <section class="about-area2 section-padding40 section-bg2" data-background="assets/img/gallery/section-bg3.png">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-5 col-lg-6 col-md-12">
                        <div class="about-caption mb-50">
                            <div class="about-icon">
                                <img src="assets/img/icon/about.svg" alt="">
                            </div>
                            <!-- Section Tittle -->
                            <div class="section-tittle mb-25">
                                <h2>You have the power to personalize your website coding.</h2>
                            </div>
                            <p class="mb-20">
                            What if you could get all your website tasks off your plate and focus only on the fun stuff? Working with Growmodo allows you to scale your marketing and grow faster without becoming a designer or developer yourself.                            </p>
                            <a href="about.jsp" class="all-btn">See how it work</a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-9 col-sm-9">
                        <!-- about-img -->
                        <div class="about-img ">
                            <img src="assets/img/gallery/about2.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About Area End -->
        <!--? About Area  -->
        <section class="about-area2 pb-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-6 col-lg-5 col-md-9">
                        <!-- about-img -->
                        <div class="about-img ">
                            <img src="assets/img/gallery/about1.png" alt="">
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6 col-md-12">
                        <div class="about-caption mb-50">
                            <div class="about-icon">
                                <img src="assets/img/icon/about.svg" alt="">
                            </div>
                            <!-- Section Tittle -->
                            <div class="section-tittle mb-25">
                                <h2>Personalized experiences are proven to increase conversions</h2>
                            </div>
                            <p class="mb-20">
                                What if you could get all your website tasks off your plate and focus only on the fun stuff? Working with Growmodo allows you to scale your marketing and grow faster without becoming a designer or developer yourself.
                            </p>
                            <a href="about.jsp" class="all-btn">See how it work</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About Area End -->
        <!--? video_start -->
        <div class="video-area section-bg2 d-flex align-items-center"  data-background="assets/img/gallery/video-bg.svg">
            <div class="container">
                <div class="video-wrap position-relative"><!--  data-background="img/video_bg/video-img.png" -->
                    <!-- <div class="vidoe-img"><img class="img" src="assets/img/gallery/video-bg.svg" alt=""></div> -->
                    <!-- Video icon -->
                    <div class="video-icon" >
                        <a class="popup-video btn-icon" href="https://www.youtube.com/watch?v=up68UAfH0d0"><i class="fas fa-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- video_end -->
        <!--? Testimonial Area Start -->
        <section class="testimonial-area fix">    
            <div class="container" >   
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-8">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center">
                            <h2>Amazing customer review</h2>
                            <p>In the old days, your website was the same for everyone. Not anymore. Experiences lets you adapt your website for every audience.</p>
                        </div>
                    </div>
                </div>
                <div class="testimonial-wrapper section-bg2 pt-135" data-background="assets/img/gallery/section_bg01.png">
                    <div class="row align-items-center justify-content-center">
                        <div class=" col-lg-8 col-md-12 col-sm-9">
                            <div class="about-caption">
                                <!-- Testimonial Start -->
                                <div class="h1-testimonial-active dot-style">
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial text-center">
                                        <div class="testimonial-caption">
                                            <img src="assets/img/icon/quotes-sign.png" alt="" class="quotes-sign">
                                            <p>Brook presents your services with flexible, convenient and cdpose layouts. You can select your favorite layouts & elements for cular ts with unlimited ustomization possibilities. Pixel-perfect replica;ition of thei designers ijtls intended csents your se.</p>
                                        </div>
                                        <!-- founder -->
                                        <div class="testimonial-founder d-flex align-items-center justify-content-center">
                                            <div class="founder-text">
                                                <span>Robart Brown</span>
                                                <p>Creative designer at Colorlib</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial text-center">
                                        <div class="testimonial-caption">
                                            <img src="assets/img/icon/quotes-sign.png" alt="" class="quotes-sign">
                                            <p>Brook presents your services with flexible, convenient and cdpose layouts. You can select your favorite layouts & elements for cular ts with unlimited ustomization possibilities. Pixel-perfect replica;ition of thei designers ijtls intended csents your se.</p>
                                        </div>
                                        <!-- founder -->
                                        <div class="testimonial-founder d-flex align-items-center justify-content-center">

                                            <div class="founder-text">
                                                <span>Robart Brown</span>
                                                <p>Creative designer at Colorlib</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Testimonial End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- Want To work End -->

    </main>
   
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                            
                                <h4 class="btn" onclick="desktopMode()" style="color: white;">PC버전</h4>
                                <h4 class="btn" onclick="undesktopMode()" style="color: white;">모바일버전</h4>
                                <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                             
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <!-- Footer End-->
      </div>
  </footer>

  <!-- Scroll Up -->
  <div id="back-top" >
    <a title="Go to Top" href="#" style="font-size: 30px; font-weight:bold; ">↑</a>
  </div>

<!-- JS here -->
<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="./assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>
<!-- Progress -->
<script src="./assets/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="./assets/js/jquery.counterup.min.js"></script>
<script src="./assets/js/waypoints.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="./assets/js/contact.js"></script>
<script src="./assets/js/jquery.form.js"></script>
<script src="./assets/js/jquery.validate.min.js"></script>
<script src="./assets/js/mail-script.js"></script>
<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/main.js"></script>

 <!-- PC모드에서 다시 모바일로 돌아올때 사용 할 '원래대로' 버튼 -->
 <script>
    if (desktopModeTF == "true") {document.write(
      );}
      </script>
  
    <script>
      function desktopMode() {
        alert("PC버전으로 이동합니다.");
        document.cookie="DesktopMode=true";
        document.cookie="DesktopModeScale="+$('html').width()/1024;
        window.scrollTo(0,0);
        location.reload();
      }
      function undesktopMode() {
        document.cookie="DesktopMode=false";
        location.reload();
       }
     </script> 


</body>
</html>