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
    <%
        MemberDTO info=(MemberDTO)session.getAttribute("info");
    
        %>
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
    
     <!-- 게시판 템플릿 -->
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/default.css?ver=0955">
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/skin/board/basic/style.css?ver=171222">
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/board.common.css?ver=0955">
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/js/font-awesome/css/font-awesome.min.css">
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/mobile.css?ver=0955">
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/css/contents.css?ver=0955">
     <link rel="stylesheet" href="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/featherlight/featherlight.min.css?ver=0955">
    
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
                                    <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
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
                                        </div>
                                        <!-- Header-btn
                                        <div class="header-right-btn d-none d-lg-block ml-65">
                                            <a  data-toggle="modal" href="#myModal" class="border-btn">Log in</a>
                                        </div> -->
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


<!-- 콘텐츠 시작 { -->
   <!-- 콘텐츠 시작 { -->
    <main>
        <!--? slider Area Start-->
        <section class="slider-area slider-area2">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height2">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-8 col-lg-11 col-md-12">
                                <div class="hero__caption hero__caption2 text-center">
                                    <h1 data-animation="bounceIn" data-delay="0.2s">커뮤니티</h1>
                                </div>
                            </div>
                        </div>
                    </div>          
                </div>
            </div>
        </section>
        
        
        <div id="ctWrap">

            <div id="container">
        <!-- skin : theme/webzine -->
        <section id="bo_w">
            <h2 class="sound_only">웹진형게시판 글쓰기</h2>
        
            <!-- 게시물 작성/수정 시작 -->
            <form name="fwrite" id="fwrite" action="UploadService.do" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off" style="width:100%">
            
            <input type="hidden" name="uid" value="20092117012643"> 
            <input type="hidden" name="w" value="">
            <input type="hidden" name="bo_table" value="webzine">
            <input type="hidden" name="wr_id" value="0">
            <input type="hidden" name="sca" value="">
            <input type="hidden" name="sfl" value="">
            <input type="hidden" name="stx" value="">
            <input type="hidden" name="spt" value="">
            <input type="hidden" name="sst" value="">
            <input type="hidden" name="sod" value="">
            <input type="hidden" name="page" value="">
            <input type="hidden" value="html1" name="html">
            <input type="hidden" name = "userInfo" value = "<%=(MemberDTO)session.getAttribute("info")%>"/>
          <!-- 
            <div class="bo_w_info write_div">
                    <label for="wr_name" class="sound_only">이름<strong>필수</strong></label>
                <input type="text" name="wr_name" value="" id="wr_name" required="" class="frm_input required" placeholder="이름">
            
                    <label for="wr_password" class="sound_only">비밀번호<strong>필수</strong></label>
                <input type="password" name="wr_password" id="wr_password" required="" class="frm_input required" placeholder="비밀번호">
            
                     <label for="wr_email" class="sound_only">이메일</label>
                <input type="text" name="wr_email" value="" id="wr_email" class="frm_input email " placeholder="이메일">
            </div>
            	-->
            <div class="bo_w_tit write_div">         
                <label for="wr_subject" class="sound_only">제목<strong>필수</strong></label>
                
                <div id="autosave_wrapper write_div">
                    <input type="text" name="wr_subject" id="wr_subject" required="" class="frm_input full_input required" size="50" maxlength="255" placeholder="제목">
                </div>
            </div>
        
            <div class="write_div">
                <label for="wr_content" class="sound_only">내용<strong>필수</strong></label>
                <div class="wr_content smarteditor2">
            <textarea id="wr_content" name="wr_content"  style="width: 100%; height: 300px;  resize: none;"></textarea>
      

            </div>
                <div class="bo_w_flie write_div">
                <div class="file_wr write_div">
                    <label for="bf_file_1" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #1</span></label>
                    <input type="file" name="bf_file" id="bf_file_1" title="파일첨부 1 : 용량 1,048,576 바이트 이하만 업로드 가능" class="frm_file ">
                </div>
                   
            </div>
             <!--    <div class="bo_w_flie write_div">
                <div class="file_wr write_div">
                    <label for="bf_file_2" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #2</span></label>
                    <input type="file" name="bf_file[]" id="bf_file_2" title="파일첨부 2 : 용량 1,048,576 바이트 이하만 업로드 가능" class="frm_file ">
                </div> -->      
            </div>
            
            <div class="btn_confirm write_div">
                <input type="button" href="board.jsp" class="btn" value="취소">
                <input type="submit" href="board.jsp" class="btn" value="작성완료"> 
            </div>
            </form>
        
            <script>
                function html_auto_br(obj)
            {
                if (obj.checked) {
                    result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
                    if (result)
                        obj.value = "html2";
                    else
                        obj.value = "html1";
                }
                else
                    obj.value = "";
            }
        
            function fwrite_submit(f)
            {
                var wr_content_editor_data = oEditors.getById['wr_content'].getIR();
        oEditors.getById['wr_content'].exec('UPDATE_CONTENTS_FIELD', []);
        if(jQuery.inArray(document.getElementById('wr_content').value.toLowerCase().replace(/^\s*|\s*$/g, ''), ['&nbsp;','<p>&nbsp;</p>','<p><br></p>','<div><br></div>','<p></p>','<br>','']) != -1){document.getElementById('wr_content').value='';}
        if(!wr_content_editor_data || jQuery.inArray(wr_content_editor_data.toLowerCase(), ['&nbsp;','<p>&nbsp;</p>','<p><br></p>','<p></p>','<br>']) != -1) { alert("내용을 입력해 주십시오."); oEditors.getById['wr_content'].exec('FOCUS'); return false; }
        
                var subject = "";
                var content = "";
                $.ajax({
                    url: g5_bbs_url+"/ajax.filter.php",
                    type: "POST",
                    data: {
                        "subject": f.wr_subject.value,
                        "content": f.wr_content.value
                    },
                    dataType: "json",
                    async: false,
                    cache: false,
                    success: function(data, textStatus) {
                        subject = data.subject;
                        content = data.content;
                    }
                });
        
               
            </script>
        </section>
        <!-- } 게시물 작성/수정 끝 -->
        
            </div><!-- // #container 닫음 -->
        
            <aside id="sideBar">
                <h2 class="sound_only">사이트 전체메뉴</h2>
            </aside>
        
            <aside class="clb"></aside>
        
        </div>
 



    </main>
    <footer>
     <div class="footer-wrappper section-bg" data-background="assets/img/gallery/footer-bg.png">
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-xl-4 col-lg-5 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <!-- logo -->
                                <div class="footer-logo mb-25">
                                    <a href="index.jsp"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>The automated process starts as soon as your clothes go into the machine.</p>
                                    </div>
                                </div>
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Our solutions</h4>
                                <ul>
                                    <li><a href="#">Design & creatives</a></li>
                                    <li><a href="#">Telecommunication</a></li>
                                    <li><a href="#">Restaurant</a></li>
                                    <li><a href="#">Programing</a></li>
                                    <li><a href="#">Architecture</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Company</h4>
                                <ul>
                                    <li><a href="#">Design & creatives</a></li>
                                    <li><a href="#">Telecommunication</a></li>
                                    <li><a href="#">Restaurant</a></li>
                                    <li><a href="#">Programing</a></li>
                                    <li><a href="#">Architecture</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                    <li><a href="#">Design & creatives</a></li>
                                    <li><a href="#">Telecommunication</a></li>
                                    <li><a href="#">Restaurant</a></li>
                                    <li><a href="#">Programing</a></li>
                                    <li><a href="#">Architecture</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                  Copyright &copy;<script>document.write(new Date().getFullYear())</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
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

</body>
</html>