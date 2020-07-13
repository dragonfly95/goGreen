<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<!--
   TXT by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->


<html>

<head>
    <meta charset="utf-8" />
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->



<style>
    .hero {
        padding: 6.25rem 0px !important;
        margin: 0px !important;
    }

    .cardbox {
        border-radius: 3px;
        margin-bottom: 20px;
        padding: 0px !important;
    }

    /* ------------------------------- */
    /* Cardbox Heading
---------------------------------- */
    .cardbox .cardbox-heading {
        padding: 16px;
        margin: 0;
    }

    .cardbox .btn-flat.btn-flat-icon {
        border-radius: 50%;
        font-size: 24px;
        height: 32px;
        width: 32px;
        padding: 0;
        overflow: hidden;
        color: #fff !important;
        background: #b5b6b6;

        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
    }

    .cardbox .float-right .dropdown-menu {
        position: relative;
        left: 13px !important;
    }

    .cardbox .float-right a:hover {
        background: #f4f4f4 !important;
    }

    .cardbox .float-right a.dropdown-item {
        display: block;
        width: 100%;
        padding: 4px 0px 4px 10px;
        clear: both;
        font-weight: 400;
        font-family: 'Abhaya Libre', serif;
        font-size: 14px !important;
        color: #848484;
        text-align: inherit;
        white-space: nowrap;
        background: 0 0;
        border: 0;
    }

    /* ------------------------------- */
    /* Media Section
---------------------------------- */
    .media {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: start;
        align-items: flex-start;
    }

    .d-flex {
        display: -ms-flexbox !important;
        display: flex !important;
    }

    .media .mr-3 {
        margin-right: 1rem !important;
    }

    .media img {
        width: 48px !important;
        height: 48px !important;
        padding: 2px;
        border: 2px solid #f4f4f4;
    }

    .media-body {
        -ms-flex: 1;
        flex: 1;
        padding: .4rem !important;
    }

    .media-body p {
        font-family: 'Rokkitt', serif;
        font-weight: 500 !important;
        font-size: 14px;
        color: #88898a;
    }

    .media-body small span {
        font-family: 'Rokkitt', serif;
        font-size: 12px;
        color: #aaa;
        margin-right: 10px;
    }


    /* ------------------------------- */
    /* Cardbox Item
---------------------------------- */
    .cardbox .cardbox-item {
        position: relative;
        display: block;
    }

    .cardbox .cardbox-item img {}

    .img-responsive {
        display: block;
        max-width: 100%;
        height: auto;
    }

    .fw {
        width: 100% !important;
        height: auto;
    }


    /* ------------------------------- */
    /* Cardbox Base
---------------------------------- */
    .cardbox-base {
        border-bottom: 2px solid #f4f4f4;
    }

    .cardbox-base ul {
        margin: 10px 0px 10px 15px !important;
        padding: 10px !important;
        font-size: 0px;
        display: inline-block;
    }

    .cardbox-base li {
        list-style: none;
        margin: 0px 0px 0px -8px !important;
        padding: 0px 0px 0px 0px !important;
        display: inline-block;
    }

    .cardbox-base li a {
        margin: 0px !important;
        padding: 0px !important;
    }

    .cardbox-base li a i {
        position: relative;
        top: 4px;
        font-size: 16px;
        color: #8d8d8d;
        margin-right: 15px;
    }

    .cardbox-base li a span {
        font-family: 'Rokkitt', serif;
        font-size: 14px;
        color: #8d8d8d;
        margin-left: 20px;
        position: relative;
        top: 5px;
    }

    .cardbox-base li a em {
        font-family: 'Rokkitt', serif;
        font-size: 14px;
        color: #8d8d8d;
        position: relative;
        top: 3px;
    }

    .cardbox-base li a img {
        width: 25px;
        height: 25px;
        margin: 0px !important;
        border: 2px solid #fff;
    }
    img{
        
        background-size: auto;
    }


    /* ------------------------------- */
    /* Cardbox Comments
---------------------------------- */
  

    /* ------------------------------- */
    /* Author
---------------------------------- */
    .author a {
        font-family: 'Rokkitt', serif;
        font-size: 16px;
        color: #00C4CF;
    }

    .author p {
        font-family: 'Rokkitt', serif;
        font-size: 16px;
        color: #8d8d8d;
    }
    .youngjune {
        float: left;
    }

    
    
    
   /* =========================페이지 네이션 ============================*/
    
   
    body {
    background: #dfdfdf;
    color: #666;
    font: 14px/24px sans-serif;
}

#container {
    width: 600px;
    margin: 0 auto;
    padding: 20px;
}

.btn {
    display: inline-block;
    padding: 10px;
    border-radius: 5px; /*optional*/
    color: #aaa;
    font-size: .875em;
}


.page {
    display: inline-block;
    padding: 7px 9px;
    margin-right: 4px;
    border-radius: 3px;
    border: solid 1px #c0c0c0;
    background: #e9e9e9;
    box-shadow: inset 0px 1px 0px rgba(255,255,255, .8), 0px 1px 3px rgba(0,0,0, .1);
    font-size: .875em;
    font-weight: bold;
    text-decoration: none;
    color: #717171;
    text-shadow: 0px 1px 0px rgba(255,255,255, 1);
}

.page:hover, .page.gradient:hover {
    background: #fefefe;
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#FEFEFE), to(#f0f0f0));
    background: -moz-linear-gradient(0% 0% 270deg,#FEFEFE, #f0f0f0);
}

.page.active {
    border: none;
    background: #616161;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    color: #f0f0f0;
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
}

.page.gradient {
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#f8f8f8), to(#e9e9e9));
    background: -moz-linear-gradient(0% 0% 270deg,#f8f8f8, #e9e9e9);
}


    
.active-pink-2 input.form-control[type=text]:focus:not([readonly]) {
  border-bottom: 1px solid #f48fb1;
  box-shadow: 0 1px 0 0 #f48fb1;
}    
    
    
.pagination {
  
    margin: auto;
    top: auto;
    

}    
    
    
    #page-wrapper
    {
        background: white;
    }

    
    
    
</style>



<head>
    <title>중고거래 게시판</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="is-preload">

	<c:import url="../used/usedList.jsp"/>

    <div id="page-wrapper">
        

        <!-- Header -->
        <header id="header">
            <div class="logo container">
                <div>
                    <p>중고 거래 게시판</p>
                </div>
            </div>
        </header>

        <!-- ########################Nav####################################-->
        <nav id="nav">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li>
                    <a href="#">Dropdown</a>
                    <ul>
                        <li><a href="#">Lorem ipsum dolor</a></li>
                        <li><a href="#">Magna phasellus</a></li>
                        <li>
                            <a href="#">Phasellus consequat</a>
                            <ul>
                                <li><a href="#">Lorem ipsum dolor</a></li>
                                <li><a href="#">Phasellus consequat</a></li>
                                <li><a href="#">Magna phasellus</a></li>
                                <li><a href="#">Etiam dolore nisl</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Veroeros feugiat</a></li>
                    </ul>
                </li>
                <li class="current"><a href="left-sidebar.html">Left Sidebar</a></li>
                <li><a href="right-sidebar.html">Right Sidebar</a></li>
                <li><a href="no-sidebar.html">No Sidebar</a></li>
            </ul>
        </nav>

        <!-- #################################Main##################################### -->



<br><br>
        <section class="page-section" id="team">
            
            <div class="container">
                
                

                
                
                <div class="text-center">
                     
                    <h2 class="section-heading text-uppercase">중고거래 게시판입니다.</h2>
                    <h3 class="section-subheading text-muted">허가받지 않은 자의 거래가 금지되는 주류, 담배, 헌혈증과 같은 제품은 금지합니다.  </h3>
                </div>          
                <br>
                <div class="row">
                    <div class="col-lg-4 youngjune">
                        
                        <div class="team-member">
                            <div class="cardbox bg-white">
			 
			 <div class="cardbox-heading">
			 
			 
			  <!-- START dropdown-->
			  <div class="dropdown float-right">
			   <button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
				<em class="fa fa-ellipsis-h"></em>
			   </button>
			   <div class="dropdown-menu dropdown-scale dropdown-menu-right" role="menu" style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
				<a href="URL" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기
                    

                    
                <a class="dropdown-item" href="#">신고하기</a>
			   </div>
			  </div><!--/ dropdown -->
			  <div class="media m-0">
			   <div class="d-flex mr-3">
				
			   </div>
			   <div class="media-body">
			    <p class="m-0">${u.uWriter}</p>
				<small><span><i class="icon ion-md-pin"></i> 원주, 강원</span></small>
				<small><span><i class="icon ion-md-time"></i>${u.uCreateDate}</span></small>
			   </div>
			  </div><!--/ media -->
			 </div><!--/ cardbox-heading -->
			  <a href="#">
			 <div class="cardbox-item">
			  <img class="img-fluid" src="images/set.jpg" alt="Image">
			 </div><!--/ cardbox-item -->
                 </a>
			 <div class="cardbox-base">
			  <ul class="float-right">
                  
			   <li><a><i class="fa fa-comments"></i></a></li>
			   <li><a><em class="mr-5">12</em></a></li>
			  </ul>
			  <ul>
			   <li><a><i class="fa fa-thumbs-up"></i></a></li>
			   <li><a><span>221 Likes</span></a></li>
                  
			  </ul>	
                                </div>
                            </div>
                        </div>
                            
                    </div>
                    
                    
                    
                    <div class="col-lg-4 youngjune">
                    <c:foEach var="u" items="${list }"/>
                        <div class="team-member">
                            <div class="cardbox bg-white">

                                <div class="cardbox-heading">
                                    <!-- START dropdown-->
                                    <div class="dropdown float-right">
                                        <button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
                                            <em class="fa fa-ellipsis-h"></em>
                                        </button>
                                        <div class="dropdown-menu dropdown-scale dropdown-menu-right" role="menu" style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                            <a href="URL" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기</a>
                                            <a class="dropdown-item" href="#">신고하기</a>
                                        
                                        </div>
                                    </div>
                                    <!--/ dropdown -->
                                    <div class="media m-0">
                                        <div class="d-flex mr-3">
                                           
                                        </div>
                                        <div class="media-body">
                                            <p class="m-0">이진성</p>
                                            <small><span><i class="icon ion-md-pin"></i> 괴산, 충북</span></small>
                                            <small><span><i class="icon ion-md-time"></i> 3시간 전</span></small>
                                        </div>
                                    </div>
                                    <!--/ media -->
                                </div>
                                <!--/ cardbox-heading -->
                                <a href="#">    
                                <div class="cardbox-item">
                                    <img class="img-fluid" src="images/burner.jpg" alt="Image">
                                </div>
                                </a>
                                <!--/ cardbox-item -->
                                <div class="cardbox-base">
                                    <ul class="float-right">
                                        <li><a><i class="fa fa-comments"></i></a></li>
                                        <li><a><em class="mr-5">26</em></a></li>
                                    </ul>
                                    <ul>
                                        <li><a><i class="fa fa-thumbs-up"></i></a></li>
                                        
                                        <li><a><span>162 Likes</span></a></li>
                                        <!--/ cardbox-base -->
                            
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                   
                    <div class="col-lg-4 youngjune">
                        <div class="team-member">
                            <div class="cardbox bg-white">

                                <div class="cardbox-heading">
                                    <!-- START dropdown-->
                                    <div class="dropdown float-right">
                                        <button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
                                            <em class="fa fa-ellipsis-h"></em>
                                        </button>
                                        <div class="dropdown-menu dropdown-scale dropdown-menu-right" role="menu" style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                            <a href="URL" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기</a>
                                            <a class="dropdown-item" href="#">신고하기</a>
                                        </div>
                                    </div>
                                    <!--/ dropdown -->
                                    <div class="media m-0">
                                        <div class="d-flex mr-3">
                                           
                                        </div>
                                        <div class="media-body">
                                            <p class="m-0">
                                            <c:if test="${!empty loginUser}">
                                            	<c:url var="udetail" value="${u.usedId }">
                                            		<c:param name ="usedId" value="${u.usedId}"/>
                                            		<c:param name ="page" value="${pi.usedCurrentPage }"/>
                                            	</c:url>
                                            </c:if>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            </p>
                                            <small><span><i class="icon ion-md-pin"></i> 광진구, 서울</span></small>
                                            <small><span><i class="icon ion-md-time"></i> 2 시간 전</span></small>
                                        </div>
                                    </div>
                                    <!--/ media -->
                                </div>
                                <!--/ cardbox-heading -->
                                <a href="#">
                                <div class="cardbox-item">
                                    <img class="img-fluid" src="images/burner.jpg" alt="Image">
                                    </div></a>
                                <!--/ cardbox-item -->
                                <div class="cardbox-base">
                                    <ul class="float-right">
                                        <li><a><i class="fa fa-comments"></i></a></li>
                                        <li><a><em class="mr-5">12</em></a></li>
                                    </ul>
                                    <ul>
                                        <li><a><i class="fa fa-thumbs-up"></i></a></li>
                                        
                                        <li><a><span>129 Likes</span></a></li>
                                        <!--/ cardbox-base -->
                                
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                <br><br>
                
                
                
                
                
                 <div class="row">
                    <div class="col-lg-4 youngjune">
                        <div class="team-member">
                            <div class="cardbox bg-white">
			 
			 <div class="cardbox-heading">
			  <!-- START dropdown-->
			  <div class="dropdown float-right">
			   <button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
				<em class="fa fa-ellipsis-h"></em>
			   </button>
			   <div class="dropdown-menu dropdown-scale dropdown-menu-right" role="menu" style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
				
                   <a href="URL" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기


                <a class="dropdown-item" href="#">신고하기</a>
			   </div>
			  </div><!--/ dropdown -->
			  <div class="media m-0">
			   <div class="d-flex mr-3">
				
			   </div>
			   <div class="media-body">
			    <p class="m-0">전영준</p>
				<small><span><i class="icon ion-md-pin"></i> 원주, 강원</span></small>
				<small><span><i class="icon ion-md-time"></i> 10 시간 전</span></small>
			   </div>
			  </div><!--/ media -->
			 </div><!--/ cardbox-heading -->
			  <a href="#">
			 <div class="cardbox-item">
			  <img class="img-fluid" src="images/set.jpg" alt="Image">
			 </div><!--/ cardbox-item -->
                 </a>
			 <div class="cardbox-base">
			  <ul class="float-right">
                  
			   <li><a><i class="fa fa-comments"></i></a></li>
			   <li><a><em class="mr-5">12</em></a></li>
                  
			  </ul>
			  <ul>
			   <li><a><i class="fa fa-thumbs-up"></i></a></li>
                  
			  
			   <li><a><span>221 Likes</span></a></li>
                  
			  </ul>	
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 youngjune">
                        <div class="team-member">
                            <div class="cardbox bg-white">

                                <div class="cardbox-heading">
                                    <!-- START dropdown-->
                                    <div class="dropdown float-right">
                                        <button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
                                            <em class="fa fa-ellipsis-h"></em>
                                        </button>
                                        <div class="dropdown-menu dropdown-scale dropdown-menu-right" role="menu" style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                            <a href="URL" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기</a>
                                            <a class="dropdown-item" href="#">신고하기</a>
                                        
                                        </div>
                                    </div>
                                    <!--/ dropdown -->
                                    <div class="media m-0">
                                        <div class="d-flex mr-3">
                                        </div>
                                        <div class="media-body">
                                            <p class="m-0">이진성</p>
                                            <small><span><i class="icon ion-md-pin"></i> 괴산, 충북</span></small>
                                            <small><span><i class="icon ion-md-time"></i> 3시간 전</span></small>
                                        </div>
                                    </div>
                                    <!--/ media -->
                                </div>
                                <!--/ cardbox-heading -->
                                <a href="#">
                                <div class="cardbox-item">
                                    <img class="img-fluid" src="images/burner.jpg" alt="Image">
                                </div>
                                </a>
                                <!--/ cardbox-item -->
                                <div class="cardbox-base">
                                    <ul class="float-right">
                                        <li><a><i class="fa fa-comments"></i></a></li>
                                        <li><a><em class="mr-5">26</em></a></li>
                                    </ul>
                                    <ul>
                                        <li><a><i class="fa fa-thumbs-up"></i></a></li>
                                        
                                        <li><a><span>162 Likes</span></a></li>
                                        <!--/ cardbox-base -->
                            
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 youngjune">
                        <div class="team-member">
                            <div class="cardbox bg-white">

                                <div class="cardbox-heading">
                                    <!-- START dropdown-->
                                    <div class="dropdown float-right">
                                        <button class="btn btn-flat btn-flat-icon" type="button" data-toggle="dropdown" aria-expanded="false">
                                            <em class="fa fa-ellipsis-h"></em>
                                        </button>
                                        <div class="dropdown-menu dropdown-scale dropdown-menu-right" role="menu" style="position: absolute; transform: translate3d(-136px, 28px, 0px); top: 0px; left: 0px; will-change: transform;">
                                            <a href="URL" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기</a>
                                            <a class="dropdown-item" href="#">신고하기</a>
                                        </div>
                                    </div>
                                    <!--/ dropdown -->
                                    <div class="media m-0">
                                        <div class="d-flex mr-3">
                                            
                                        </div>
                                        <div class="media-body">
                                            <p class="m-0">김혜숙</p>
                                            <small><span><i class="icon ion-md-pin"></i> 광진구, 서울</span></small>
                                            <small><span><i class="icon ion-md-time"></i> 2 시간 전</span></small>
                                        </div>
                                    </div>
                                    <!--/ media -->
                                </div>
                                <!--/ cardbox-heading -->
                                <a href="#">
                                <div class="cardbox-item">
                                    <img class="img-fluid" src="images/chair.jpg" alt="Image">
                                </div>
                                </a>
                                <!--/ cardbox-item -->
                                <div class="cardbox-base">
                                    <ul class="float-right">
                                        <li><a><i class="fa fa-comments"></i></a></li>
                                        <li><a><em class="mr-5">12</em></a></li>
                                    </ul>
                                    <ul>
                                        <li><a><i class="fa fa-thumbs-up"></i></a></li>
                                       
                                        <li><a><span>129 Likes</span></a></li>
                                        <!--/ cardbox-base -->
                                
                                    </ul>
                                </div>
                            </div>
                            </div>
                    </div>
                     
                     
                     
            <div class="pagination">
                            
                  
                    <form class="form-inline d-flex justify-content-center md-form form-sm mt-0">
                      <i class="fas fa-search" aria-hidden="true"></i>
                      <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search"
                        aria-label="Search">
                    </form>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                  
                                <a href="#" class="page">first</a><a href="#" class=
                                "page">2</a><a href="#" class="page">3</a><span
                     class="page active">4</span><a href="#" class=
                     "page">5</a><a href="#" class="page">6</a><a href="#"
                     class="page">last</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                   
                <button type="button" class="btn btn-outline-success" font size>글 쓰 기</button>
          
            </div>
                     

                <br><br>
                
          
        </section>








        <!-- ######################Footer###########################-->
        <footer id="footer">
            <div class="container">
                <div class="row gtr-200">
                    <div class="col-12">

                        <!-- About -->
                        <section>
                            <h2 class="major"><span>What's this about?</span></h2>
                            <p>
                                This is <strong>TXT</strong>, yet another free responsive site template designed by
                                <a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net">HTML5 UP</a>. It's released under the
                                <a href="http://html5up.net/license/">Creative Commons Attribution</a> license so feel free to use it for
                                whatever you're working on (personal or commercial), just be sure to give us credit for the design.
                                That's basically it :)
                            </p>
                        </section>

                    </div>
                    <div class="col-12">

                        <!-- Contact -->
                        <section>
                            <h2 class="major"><span>Get in touch</span></h2>
                            <ul class="contact">
                                <li><a class="icon brands fa-facebook-f" href="#"><span class="label">Facebook</span></a></li>
                                <li><a class="icon brands fa-twitter" href="#"><span class="label">Twitter</span></a></li>
                                <li><a class="icon brands fa-instagram" href="#"><span class="label">Instagram</span></a></li>
                                <li><a class="icon brands fa-dribbble" href="#"><span class="label">Dribbble</span></a></li>
                                <li><a class="icon brands fa-linkedin-in" href="#"><span class="label">LinkedIn</span></a></li>
                            </ul>
                        </section>

                    </div>
                </div>

                <!-- Copyright -->
                <div id="copyright">
                    <ul class="menu">
                        <li>&copy; Untitled. All rights reserved</li>
                        <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                    </ul>
                </div>

            </div>
        </footer>

    </div>



</body>

</html>
