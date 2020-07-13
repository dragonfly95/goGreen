<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"><div class="pd-wrap">
        
<header>

    <style>
    .pd-wrap {
	padding: 40px 0;
	font-family: 'Poppins', sans-serif;
}
.heading-section {
	text-align: center;
	margin-bottom: 20px;
}
.sub-heading {
	font-family: 'Poppins', sans-serif;
    font-size: 12px;
    display: block;
    font-weight: 600;
    color: #2e9ca1;
    text-transform: uppercase;
    letter-spacing: 2px;
}
.heading-section h2 {
	font-size: 32px;
    font-weight: 500;
    padding-top: 10px;
    padding-bottom: 35px;
	font-family: 'Poppins', sans-serif;
}
.user-img {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    position: relative;
	min-width: 80px;
	background-size: 100%;
}
.carousel-testimonial .item {
	padding: 30px 10px;
}
.quote {
	position: absolute;
    top: -23px;
    color: #2e9da1;
    font-size: 27px;
}
.name {
	margin-bottom: 0;
    line-height: 14px;
    font-size: 17px;
    font-weight: 500;
}
.position {
	color: #adadad;
	font-size: 14px;
}
.owl-nav button {
	position: absolute;
	top: 50%;
	transform: translate(0, -50%);
	outline: none;
	height: 25px;
}
.owl-nav button svg {
	width: 25px;
	height: 25px;
}
.owl-nav button.owl-prev {
	left: 25px;
}
.owl-nav button.owl-next {
	right: 25px;
}
.owl-nav button span {
	font-size: 45px;
}
.product-thumb .item img {
	height: 100px;
}
.product-name {
	font-size: 22px;
	font-weight: 500;
	line-height: 22px;
	margin-bottom: 4px;
}
.product-price-discount {
	font-size: 22px;
    font-weight: 400;
    padding: 10px 0;
    clear: both;
}
.product-price-discount span.line-through {
	text-decoration: line-through;
    margin-left: 10px;
    font-size: 14px;
    vertical-align: middle;
    color: #a5a5a5;
}
.display-flex {
	display: flex;
}
.align-center {
	align-items: center;
}
.product-info {
	width: 100%;
}
.reviews-counter {
    font-size: 13px;
}
.reviews-counter span {
	vertical-align: -2px;
}
.rate {
    float: left;
    padding: 0 10px 0 0;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float: right;
    width: 15px;
    overflow: hidden;
    white-space: nowrap;
    cursor: pointer;
    font-size: 21px;
    color:#ccc;
	margin-bottom: 0;
	line-height: 21px;
}
.rate:not(:checked) > label:before {
    content: '\2605';
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}
.product-dtl p {
	font-size: 14px;
	line-height: 24px;
	color: #7a7a7a;
}
.product-dtl .form-control {
	font-size: 15px;
}
.product-dtl label {
	line-height: 16px;
	font-size: 15px;
}
.form-control:focus {
	outline: none;
	box-shadow: none;
}
.product-count {
	margin-top: 15px; 
}
.product-count .qtyminus,
.product-count .qtyplus {
	width: 34px;
    height: 34px;
    background: #212529;
    text-align: center;
    font-size: 19px;
    line-height: 36px;
    color: #fff;
    cursor: pointer;
}
.product-count .qtyminus {
	border-radius: 3px 0 0 3px; 
}
.product-count .qtyplus {
	border-radius: 0 3px 3px 0; 
}
.product-count .qty {
	width: 60px;
	text-align: center;
}
.round-black-btn {
	border-radius: 4px;
    background: #212529;
    color: #fff;
    padding: 7px 45px;
    display: inline-block;
    margin-top: 20px;
    border: solid 2px #212529; 
    transition: all 0.5s ease-in-out 0s;
}
.round-black-btn:hover,
.round-black-btn:focus {
	background: transparent;
	color: #212529;
	text-decoration: none;
}

.product-info-tabs {
	margin-top: 25px; 
}
.product-info-tabs .nav-tabs {
	border-bottom: 2px solid #d8d8d8;
}
.product-info-tabs .nav-tabs .nav-item {
	margin-bottom: 0;
}
.product-info-tabs .nav-tabs .nav-link {
	border: none; 
	border-bottom: 2px solid transparent;
	color: #323232;
}
.product-info-tabs .nav-tabs .nav-item .nav-link:hover {
	border: none; 
}
.product-info-tabs .nav-tabs .nav-item.show .nav-link, 
.product-info-tabs .nav-tabs .nav-link.active, 
.product-info-tabs .nav-tabs .nav-link.active:hover {
	border: none; 
	border-bottom: 2px solid #d8d8d8;
	font-weight: bold;
}
.product-info-tabs .tab-content .tab-pane {
	padding: 30px 20px;
	font-size: 15px;
	line-height: 24px;
	color: #7a7a7a;
}
.review-form .form-group {
	clear: both;
}
.mb-20 {
	margin-bottom: 20px;
}

.review-form .rate {
	float: none;
	display: inline-block;
}
.review-heading {
	font-size: 24px;
    font-weight: 600;
    line-height: 24px;
    margin-bottom: 6px;
    text-transform: uppercase;
    color: #000;
}
.review-form .form-control {
	font-size: 14px;
}
.review-form input.form-control {
	height: 40px;
}
.review-form textarea.form-control {
	resize: none;
}
.review-form .round-black-btn {
	text-transform: uppercase;
	cursor: pointer;
}
        
        
        

        
        
    </style>
</header>
        
        <head>
    <title>상세페이지</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>

<body class="is-preload">
<c:import url="../used/usedDetail.jsp"/>
    <div id="page-wrapper" style="background:white;">

        <!-- Header -->
        <header id="header">
            <div class="logo container">
                <div>
                    <h1><a href="index.html" id="logo"></a></h1>
                    <p>중고 거래 게시판</p><br><br>
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
        
        
        
        
        
        
        
        
        <body>
        
        
		<div class="container">
	        <div class="heading-section">
	            <h2>중고 용품 상세정보</h2>
	        </div>
	        <div class="row">
	        	<div class="col-md-6">
	        		<div id="slider" class="owl-carousel product-slider">
						<div class="item">
						  	<img src="images/burner.jpg" />
						</div>
						<div class="item">
						  	<img src="https://i.ytimg.com/vi/PJ_zomNMK_s/maxresdefault.jpg" />
						</div>
						<div class="item">
						  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI6nUmObt62eDkqNSmIvCN_KkQExtbpJmUbVx_eTh_Y3v3r-Jw" />
						</div>
						<div class="item">
						  	<img src="https://i.ytimg.com/vi/PJ_zomNMK_s/maxresdefault.jpg" />
						</div>
						<div class="item">
						  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI6nUmObt62eDkqNSmIvCN_KkQExtbpJmUbVx_eTh_Y3v3r-Jw" />
						</div>
						<div class="item">
						  	<img src="https://i.ytimg.com/vi/PJ_zomNMK_s/maxresdefault.jpg" />
						</div>
						<div class="item">
						  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI6nUmObt62eDkqNSmIvCN_KkQExtbpJmUbVx_eTh_Y3v3r-Jw" />
						</div>
					</div>
					<div id="thumb" class="owl-carousel product-thumb">
						<div class="item">
						  	<img src="images/set.jpg" />
						</div>
						<div class="item">
						  	<img src="images/set.jpg" />
						</div>
						<div class="item">
						  	<img src="images/set.jpg" />
						</div>
						<div class="item">
						  	<img src="images/set.jpg" />
						</div>
						<div class="item">
						  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI6nUmObt62eDkqNSmIvCN_KkQExtbpJmUbVx_eTh_Y3v3r-Jw" />
						</div>
						<div class="item">
						  	<img src="https://i.ytimg.com/vi/PJ_zomNMK_s/maxresdefault.jpg" />
						</div>
						<div class="item">
						  	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI6nUmObt62eDkqNSmIvCN_KkQExtbpJmUbVx_eTh_Y3v3r-Jw" />
						</div>
					</div>
	        	</div>
	        	<div class="col-md-6">
	        		<div class="product-dtl">
        				<div class="product-info">
		        			<div class="product-name"> 버너 세트 판매합니다!</div>
                            
                            <div class="media-body">
                                <span><i class="icon ion-md-pin"></i> ${usedBoard.uTitle }</span><br>
                                
                            </div>
                            
                            <br>
		        			<div class="reviews-counter">
								
							</div>
		        			<div class="product-price-discount"><span>120,000원</span><span class="line-through">120,000원</span></div>
		        		</div>
	        			<p>대통령은 국무회의의 의장이 되고, 국무총리는 부의장이 된다. 대한민국의 국민이 되는 요건은 법률로 정한다. 중앙선거관리위원회는 대통령이 임명하는 3인, 국회에서 선출하는 3인과 대법원장이 지명하는 3인의 위원으로 구성한다. 위원장은 위원중에서 호선한다.
행정권은 대통령을 수반으로 하는 정부에 속한다. 국회에서 의결된 법률안은 정부에 이송되어 15일 이내에 대통령이 공포한다. 모든 국민은 자기의 행위가 아닌 친족의 행위로 인하여 불이익한 처우를 받지 아니한다.
대통령은 국민의 보통·평등·직접·비밀선거에 의하여 선출한다. 국회의원은 그 지위를 남용하여 국가·공공단체 또는 기업체와의 계약이나 그 처분에 의하여 재산상의 권리·이익 또는 직위를 취득하거나 타인을 위하여 그 취득을 알선할 수 없다.
</p>
	        			<div class="row">
	        				<div class="col-md-6">
	        					<label for="size">지역</label>
								<select id="size" name="size" class="form-control">
									<option>수도권</option>
									<option>경기북부</option>
									<option>경기남부</option>
                                    <option>충청도</option>
									<option>경상도</option>
                                    <option>전라도</option>
								</select>
	        				</div>
	        				<div class="col-md-6">
	        					
	        				</div>
	        			</div>
	        			<div class="product-count">
	        				<a href="#" class="round-black-btn"> 수정하기 </a>
                            <a href="#" class="round-black-btn"> 삭제하기 </a>
							
                            <a class="round-black-btn" href="usedChat.html" onclick="window.open(this.href, '_blank', 'width=500px,height=700px,toolbars=no,scrollbars=no'); return false;">채팅하기</a>
	        			</div>
	        		</div>
	        	</div>
	        </div>
	        <div class="product-info-tabs">
		        <ul class="nav nav-tabs" id="myTab" role="tablist">
				  	
				  	<li class="nav-item">
				    	<a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">댓글 (0)</a>
				  	</li>
				</ul>
				
                    
                    
                    
                    
                    
                    
				  	
				  		
                        
                        
                        
                       <div id="disqus_thread"></div>
                        <script>

                        /**
                        *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
                        *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
                        /*
                        var disqus_config = function () {
                        this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
                        this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
                        };
                        */
                        (function() { // DON'T EDIT BELOW THIS LINE
                        var d = document, s = d.createElement('script');
                        s.src = 'https://greencamping.disqus.com/embed.js';
                        s.setAttribute('data-timestamp', +new Date());
                        (d.head || d.body).appendChild(s);
                        })();
                        </script>
                        <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

                        
                        
                        
                        
				  	</div>
				</div>
			</div>
            
            
            

            
            
            
            
			<div style="text-align:center;font-size:14px;padding-bottom:20px;">풋터 <a href="http://iiicons.in/" target="_blank" style="color:#ff5e63;font-weight:bold;">www.healing.in</a></div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>


    
   
    
    
    
    
    
    $(document).ready(function() {
		    var slider = $("#slider");
		    var thumb = $("#thumb");
		    var slidesPerPage = 4; //globaly define number of elements per page
		    var syncedSecondary = true;
		    slider.owlCarousel({
		        items: 1,
		        slideSpeed: 2000,
		        nav: false,
		        autoplay: false, 
		        dots: false,
		        loop: true,
		        responsiveRefreshRate: 200
		    }).on('changed.owl.carousel', syncPosition);
		    thumb
		        .on('initialized.owl.carousel', function() {
		            thumb.find(".owl-item").eq(0).addClass("current");
		        })
		        .owlCarousel({
		            items: slidesPerPage,
		            dots: false,
		            nav: true,
		            item: 4,
		            smartSpeed: 200,
		            slideSpeed: 500,
		            slideBy: slidesPerPage, 
		        	navText: ['<svg width="18px" height="18px" viewBox="0 0 11 20"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M9.554,1.001l-8.607,8.607l8.607,8.606"/></svg>', '<svg width="25px" height="25px" viewBox="0 0 11 20" version="1.1"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M1.054,18.214l8.606,-8.606l-8.606,-8.607"/></svg>'],
		            responsiveRefreshRate: 100
		        }).on('changed.owl.carousel', syncPosition2);
		    function syncPosition(el) {
		        var count = el.item.count - 1;
		        var current = Math.round(el.item.index - (el.item.count / 2) - .5);
		        if (current < 0) {
		            current = count;
		        }
		        if (current > count) {
		            current = 0;
		        }
		        thumb
		            .find(".owl-item")
		            .removeClass("current")
		            .eq(current)
		            .addClass("current");
		        var onscreen = thumb.find('.owl-item.active').length - 1;
		        var start = thumb.find('.owl-item.active').first().index();
		        var end = thumb.find('.owl-item.active').last().index();
		        if (current > end) {
		            thumb.data('owl.carousel').to(current, 100, true);
		        }
		        if (current < start) {
		            thumb.data('owl.carousel').to(current - onscreen, 100, true);
		        }
		    }
		    function syncPosition2(el) {
		        if (syncedSecondary) {
		            var number = el.item.index;
		            slider.data('owl.carousel').to(number, 100, true);
		        }
		    }
		    thumb.on("click", ".owl-item", function(e) {
		        e.preventDefault();
		        var number = $(this).index();
		        slider.data('owl.carousel').to(number, 300, true);
		    });


            $(".qtyminus").on("click",function(){
                var now = $(".qty").val();
                if ($.isNumeric(now)){
                    if (parseInt(now) -1> 0)
                    { now--;}
                    $(".qty").val(now);
                }
            })            
            $(".qtyplus").on("click",function(){
                var now = $(".qty").val();
                if ($.isNumeric(now)){
                    $(".qty").val(parseInt(now)+1);
                }
            });
		});
    
    

</script>
</body>
