<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
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
                                    <a href="index.jsp"><img src="assets/img/logo/logo2.png" alt=""></a>
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
                                            
                                            </nav>
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
        
        

 <!-- 게시판 목록 시작  -->
 <!-- 참고 : http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic&sop=and&sst=wr_hit&sod=asc&sfl=&stx=&sca=&page=1 -->
    <div id="bo_list" style="width:100%;">
   
        <form name="fboardlist" id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
        <input type="hidden" name="bo_table" value="basic">
        <input type="hidden" name="sfl" value="">
        <input type="hidden" name="stx" value="">
        <input type="hidden" name="spt" value="">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sst" value="wr_num, wr_reply">
        <input type="hidden" name="sod" value="">
        <input type="hidden" name="page" value="1">
        <input type="hidden" name="sw" value="">
    
        
        <div class="likeTbl" style="padding:40px 50px 20px 50px; font-size:14px;" >
            <ul>
            <li class="likeTblTr likeTblTh"  >
                <div>번호</div>
                <div>제목</div>
                <div>작성자</div>
                <div>조회수</div>
                <div>날짜</div>
            </li>
        
        <li class="bo_notice likeTblTr likeTblTd">
            <div class="mvInlineN td_num2"></div>
            <div class="td_subject" style="padding-left:0px">
                <div class="bo_tit">
                    <a style="color: red; font-size: 18px;" href="#">※※ 공지사항 확인!! ※※</a>
                </div>
            </div>
            <span class="onlyMvV" style="padding-left:0px"></span>
                <div class="mvInlinev td_name sv_use"><span class="sv_member">웹사이팅</span></div>
                <div class="mvInlinev td_num"> 2354</div>
                <div class="mvInlinev td_datetime"> 02-06</div>
        </li>
        	<%
        		BoardDAO dao = new BoardDAO();
        	        		ArrayList<BoardDTO> list = dao.viewAll();
        			
        	        		MemberDTO info = (MemberDTO)session.getAttribute("info");
        	%>
        
        <%for (int i=0; i<list.size(); i++){ %>
        <li class=" likeTblTr likeTblTd">
            <div class="mvInlineN td_num2"><%=i+1 %></div>
            <div class="td_subject" style="padding-left:0px">
                <div class="bo_tit">
                    <a href="board_view.jsp?boardNum=<%= list.get(i).getBoardNum()%>"><%= list.get(i).getTitle() %> 
                        <em>
                            <span class="hot_icon" style="width:25px;">NEW<span class="sound_only">인기글</span></span>
                        </em>
                        <em>
                            <span class="hot_icon" style="width:25px;">HIT<span class="sound_only">인기글</span></span>
                        </em>
                            <span class="sound_only">댓글</span><span class="cnt_cmt"><%=dao.viewComment(list.get(i).getBoardNum())%></span><span class="sound_only">개</span>
                    </a>
                </div>
            </div>
            <span class="onlyMvV" style="padding-left:0px"></span>
                <div class="mvInlinev td_name sv_use"><span class="sv_member"><%=list.get(i).getName() %></span></div>
                <div class="mvInlinev td_num"> 2354</div>
                <div class="mvInlinev td_datetime"><%=list.get(i).getDay() %></div>
        </li>
        <% } %>

            
            
        
               
         </div>
            </form>
         
        <!-- 글쓰기 버튼 -->
        <div id="bo_btn_top" style="padding-right:50px; padding-bottom: 30px;">
                <ul class="btn_bo_user">
                <li><a href="board_writer.jsp" class="btn"> 글쓰기 </a></li>                                
                </ul>
            

                <div class="row ">
                    <div class="col text-center">
                      <div class="block-27">
                        <ul>
                          <li><a href="#">&lt;</a></li>
                          <li class="active"><span>1</span></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">&gt;</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
        </div>

        
    
    
    
    <!-- 게시판 목록 끝 -->
    



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
                                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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

</body>
</html>