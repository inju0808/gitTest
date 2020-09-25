<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.CommentDAO"%>
<%@page import="com.model.CommentDTO"%>
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
        
        

 <!-- 게시판 내용보기  -->
 <div id="container">
     

    <script src="http://sample.paged.kr/purewhite/js/viewimageresize.js"></script>
    
    <!-- 게시물 읽기 시작 { -->
    <%
    	MemberDTO info=(MemberDTO)session.getAttribute("info");
        
        	int boardNum = Integer.parseInt(request.getParameter("boardNum"));
        	BoardDAO dao = new BoardDAO();
        	
        	BoardDTO dto = dao.viewOne(boardNum);
        	int commentNum = dao.viewComment(boardNum);
        	
        	MemberDAO mem_dao = new MemberDAO();
        	MemberDTO login_dto = mem_dao.login(info.getEmail(), info.getPw());
    %>
    <article  style="width:100%">
        <header>
            <h2 class="contact-title">
                <span class="bo_v_tit"><%=dto.getTitle()%></span>
            </h2>
        </header>
    
        <section id="bo_v_info" style="font-size: 15px;">
            <h2>페이지 정보</h2>
            <span class="sound_only">작성자</span> <strong><span class="sv_member"><%=dto.getName() %></span></strong>
            <span class="sound_only">댓글</span><strong><a href="#bo_vc"></i> 댓글수 <%=commentNum %>건</a></strong>
            <span class="sound_only">조회</span><strong> 593회</strong> 
            <strong class="if_date"><span class="sound_only">작성일</span><%=dto.getDay() %></strong>
        </section>

    <!-- 본문 내용 시작 -->
        <section id="bo_v_atc">
            <h2 id="bo_v_atc_title">본문</h2>
            <div id="bo_v_img"></div>

        <div id="bo_v_con">
        
            <div><p><%=dto.getContent() %></p>
            </div>
                    <div id="bo_v_con">
        
            <div><p colspan="2"> 
							<% if(dto.getFileName()!=null){ %>
								<img src="img/<%=dto.getFileName()%>">
								<br>
							<% } %>
							<%= dto.getContent() %>
					</p>
            </div>
        </div>
        </section>
    <!--  본문 내용 끝 -->
    
       
    <!-- 게시물 상단 버튼 시작 -->
        <div id="bo_v_top">
            <ul class="bo_v_left"></ul>
            <ul class="bo_v_com">
                <li><a href="board.jsp" class="submit-btn2"> 목록</a></li>
                <li><a href="board_writer.jsp" class="submit-btn2"> 글쓰기</a></li>        
            </ul>    
            </div>
    <!--  게시물 상단 버튼 끝 -->
    
     

    <!-- 댓글 목록 -->
    <script>
    var char_min = parseInt(0); // 글자수 제한 : 최소
    var char_max = parseInt(0); // 글자수 제한 : 최대
    </script>
    
    <hr class="dashHr">

    <%
    	CommentDAO com_dao = new CommentDAO();
    	ArrayList<CommentDTO> list_com = com_dao.getComList(boardNum);
    %>
	<table class="table">
    <button type="button" class="cmt_btn" style="font-size: 16px;">댓글목록</button>
    <section id="bo_vc">
        <h2>댓글목록</h2>
        	<% for(int i=0; i<list_com.size(); i++){ %>
            <span id="bo_vc_empty"><p><%=list_com.get(i).getContent2() %></p>
            <p><%= login_dto.getName() %></p>
            <p><%= list_com.get(i).getDay2() %></p>
            </span>
            <%} %>
    </section>
</table>

    <!--  댓글 목록 끝 -->
    


    <!-- 댓글 쓰기 -->
   
    <aside id="bo_vc_w" class="bo_vc_w">
        <h2>댓글쓰기</h2>
        
    <form name="fviewcomment" id="fviewcomment" onsubmit="return fviewcomment_submit(this);" method="post" autocomplete="off" action="CommentService.do">
        <input type="hidden" name="w" value="c" id="w">
        <input type="hidden" name="bo_table" value="webzine">
        <input type="hidden" name="wr_id" value="7">
        <input type="hidden" name="comment_id" value="" id="comment_id">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sfl" value="">
        <input type="hidden" name="stx" value="">
        <input type="hidden" name="spt" value="">
        <input type="hidden" name="page" value="">
        <input type="hidden" name="is_good" value="">
        <input type="hidden" name="boardNum" value="<%=boardNum%>">
    
    <span class="sound_only">내용</span>
        <textarea id="wr_content" name="wr_content" maxlength="10000" required="" class="required" style="font-size: 12px;" placeholder="댓글을 입력해 주세요."></textarea>
        
        <script>
        $(document).on("keyup change", "textarea#wr_content[maxlength]", function() {
            var str = $(this).val()
            var mx = parseInt($(this).attr("maxlength"))
            if (str.length > mx) {
                $(this).val(str.substr(0, mx));
                return false;
            }
        });
        </script>

        
        <div class="bo_vc_w_wr">
            <div class="btn_confirm">
                <input type="submit" id="btn_submit" class="btn_submit" style="width: 15%; font-size: 15px;" value="댓글등록">
            </div>
            <div class="bo_vc_w_info" style="width: 120%;">
               <!-- <input type="text" name="wr_name" value="" id="wr_name" required="" class="frm_input required" style="font-size: 12px; " placeholder="이름"> -->
               <!-- <input type="password" name="wr_password" id="wr_password" required="" class="frm_input required" style="font-size: 12px; " placeholder="비밀번호">  -->                                      
            </div>
        </div>
        </form></aside>
    
    <script>
    var save_before = '';
    var save_html = document.getElementById('bo_vc_w').innerHTML;
    
    function good_and_write()
    {
        var f = document.fviewcomment;
        if (fviewcomment_submit(f)) {
            f.is_good.value = 1;
            f.submit();
        } else {
            f.is_good.value = 0;
        }
    }
    
    function fviewcomment_submit(f)
    {
        var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
    
        f.is_good.value = 0;
    
        var subject = "";
        var content = "";
        $.ajax({
            url: g5_bbs_url+"/ajax.filter.php",
            type: "POST",
            data: {
                "subject": "",
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
    
        if (content) {
            alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
            f.wr_content.focus();
            return false;
        }
    
        // 양쪽 공백 없애기
        var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
        document.getElementById('wr_content').value = document.getElementById('wr_content').value.replace(pattern, "");
        if (char_min > 0 || char_max > 0)
        {
            check_byte('wr_content', 'char_count');
            var cnt = parseInt(document.getElementById('char_count').innerHTML);
            if (char_min > 0 && char_min > cnt)
            {
                alert("댓글은 "+char_min+"글자 이상 쓰셔야 합니다.");
                return false;
            } else if (char_max > 0 && char_max < cnt)
            {
                alert("댓글은 "+char_max+"글자 이하로 쓰셔야 합니다.");
                return false;
            }
        }
        else if (!document.getElementById('wr_content').value)
        {
            alert("댓글을 입력하여 주십시오.");
            return false;
        }
    
        if (typeof(f.wr_name) != 'undefined')
        {
            f.wr_name.value = f.wr_name.value.replace(pattern, "");
            if (f.wr_name.value == '')
            {
                alert('이름이 입력되지 않았습니다.');
                f.wr_name.focus();
                return false;
            }
        }
    
        if (typeof(f.wr_password) != 'undefined')
        {
            f.wr_password.value = f.wr_password.value.replace(pattern, "");
            if (f.wr_password.value == '')
            {
                alert('비밀번호가 입력되지 않았습니다.');
                f.wr_password.focus();
                return false;
            }
        }
    
        if (!chk_captcha()) return false;
    
        set_comment_token(f);
    
        document.getElementById("btn_submit").disabled = "disabled";
    
        return true;
    }
    
    function comment_box(comment_id, work)
    {
        var el_id,
            form_el = 'fviewcomment',
            respond = document.getElementById(form_el);
    
        // 댓글 아이디가 넘어오면 답변, 수정
        if (comment_id)
        {
            if (work == 'c')
                el_id = 'reply_' + comment_id;
            else
                el_id = 'edit_' + comment_id;
        }
        else
            el_id = 'bo_vc_w';
    
        if (save_before != el_id)
        {
            if (save_before)
            {
                document.getElementById(save_before).style.display = 'none';
            }
    
            document.getElementById(el_id).style.display = '';
            document.getElementById(el_id).appendChild(respond);
            //입력값 초기화
            document.getElementById('wr_content').value = '';
            
            // 댓글 수정
            if (work == 'cu')
            {
                document.getElementById('wr_content').value = document.getElementById('save_comment_' + comment_id).value;
                if (typeof char_count != 'undefined')
                    check_byte('wr_content', 'char_count');
                if (document.getElementById('secret_comment_'+comment_id).value)
                    document.getElementById('wr_secret').checked = true;
                else
                    document.getElementById('wr_secret').checked = false;
            }
    
            document.getElementById('comment_id').value = comment_id;
            document.getElementById('w').value = work;
    
            if(save_before)
                $("#captcha_reload").trigger("click");
    
            save_before = el_id;
        }
    }
    
    function comment_delete()
    {
        return confirm("이 댓글을 삭제하시겠습니까?");
    }
    
    comment_box('', 'c'); // 댓글 입력폼이 보이도록 처리하기위해서 추가 (root님)
    
    $(function() {            
        //댓글열기
        $(".cmt_btn").click(function(){
            $(this).toggleClass("cmt_btn_op");
            $("#bo_vc").toggle();
        });
    });
    </script>
    <!-- } 댓글 쓰기 끝 -->
    
    <script src="http://sample.paged.kr/purewhite/js/md5.js"></script>
    
    </div>
    <div id="bo_btn_top" style="padding-right:50px; padding-bottom: 50px;">
    </div>
    
    </article>

    <!-- 게시판 내용보기 끝-->
    

     




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