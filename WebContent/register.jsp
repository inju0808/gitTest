<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

	<link rel="stylesheet" href="css/jquery.timepicker.css">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

</head>
<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start-->


<!-- Register -->

<main class="login-body">
    <!-- Login Admin -->
    <form class="form-default"  method="POST" action="JoinService.do">
        
        <div class="login-form">
            <!-- logo-login -->
            <div class="logo-login">
                <a href="index.jsp"><img src="assets/img/logo/LogoMakr.png" alt=""></a>
            </div>
            <h2>회원가입</h2>

            <div class="form-input">
                <input  type="text" name="name" placeholder="*Full name">
            </div>
            <div class="form-input">              
                <input  type="email" name="email" placeholder="*Email Address">
            </div>
            <div class="form-input">              
                <input id="pw" name="pw" class="pw" type="password"  placeholder="*Password">          
            <div class="form-input">              
                <input id="pwc" name="pwc" class="pw" type="password"  placeholder="*Confirm Password">
                <font id="chkNotice" style="font-size: 14px; font-weight: bold;" ></font>
            </div>
            <div class="form-input pt-30">
                <input type="submit" name="submit" value="Registration">
            </div>
        </div>
            <!-- Forget Password -->
            <a  href="login.jsp" class="registration" style="float:right" >로그인</a>
        </div>


        
    </form>

    <!-- 비밀번호 일치 여부-->
    <script>
      $(function(){
        $('#pw').keyup(function(){
        $('#chkNotice').html('');
    });

    $('#pwc').keyup(function(){
        if($('#pw').val() != $('#pwc').val()){
          $('#chkNotice').html('※ 비밀번호 일치하지 않습니다!<br><br>');
          $('#chkNotice').attr('color', '#FF0000');
        } else{
          $('#chkNotice').html('※ 비밀번호 일치합니다.<br><br>');
          $('#chkNotice').attr('color', '#0000FF');
        }
      });
  });
    </script>

    <!-- /end login form -->
</main>


    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Video bg -->
    <script src="./assets/js/jquery.vide.js"></script>

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
    
    </body>
</html>