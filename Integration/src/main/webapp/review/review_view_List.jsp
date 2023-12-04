<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

*, :after, :before {
    box-sizing: border-box;
    margin:auto;
    list-style:none;
    text-decoration: none;
}

form {
    display: block;
    margin-top: 0em;
}

#store-search-wrap{
margin:auto;
margin-top:10px;
margin-bottom: 10px;
padding-left: 15px;
padding-right: 15px;
background-color: transparent;
width:800px;

}

.icon-search:before {
    content: '\21B2';
}


@media (min-width: 992px)
.search-group .form-control {
    font-size: 16px;
    padding-left: 10px;
    padding-right: 40px;
    letter-spacing: 0;
    height: calc(44px - 4px);
    
}

.search-group{

display:flex;
}

    

.search-group .search-bar-wrap{
    margin: 0 20px 0 0;
    border: 2px solid orange;
    border-radius: 5px;
    background-color: #fff;
}

.container-lnb::after,.container::after,.dl-horizontal dd::after,.form-horizontal .form-group::after,.modal-footer::after,.modal-header::after,.nav::after,.panel-body::after,.row::after {
    clear: both;
    display: block;
    content: "";
    height: 0;
}



.search-bar-wrap
{
    display: inline-block;
    width: 75%;
    height: 44px;
    border-collapse: separate;
    
}

.search-bar-wrap .form-control {
    display: inline-block;
    height: 44px;
    border: none;
    background: 0 0;
    color: #222;
    font-size: 14px;
    padding-left: 10px;
    padding-right: 110px;
    letter-spacing: -.6px;
    
    
}
   
.search-bar-wrap .form-control-clear {
    width: 40px;
    height: 40px;
    z-index: 2;
    pointer-events: auto;
    cursor: pointer;
    font-size: 24px;
    line-height: 44px;
    right: 70px;
}


.search-bar-wrap input[type="text" i] {
    padding-block: 1px;
    padding-inline: 2px;
    writing-mode: horizontal-tb !important;
}

.search-btn-wrap{
margin-left:5px;
}

.btn-default {
    right: 8px;
    font-size: 25px;
    border-radius: 3px;
    width: 44px;
    height: 44px;
    background-color: orange;
    color: #FFF;
    border: 2px solid orange;
}


.filter-restaurant-btn {
    border-radius: 20px;
    min-width: 120px;
    padding-left: 16px;
    padding-right: 16px;
    margin-bottom: 5px;
    color: #eee;
    background-color: orange;
    border-color: orange;
    font-weight: 400;
    text-align: center;
    touch-action: manipulation;
    cursor: pointer;
    border: 1px solid transparent;
    padding: 7px 12px;
    font-size: 14px;
    line-height: 1.71428571;
    vertical-align: middle;
}

.filter-restaurant-btn-list, .filter-restaurant-btn-dropdown{
    border-radius: 20px;
    min-width: 120px;
    padding-left: 16px;
    padding-right: 16px;
    margin-bottom: 5px;
    color: #555;
    background-color: #ddd;
    border-color: #ccc;
    font-weight: 400;
    text-align: center;
    touch-action: manipulation;
    cursor: pointer;
    border: 1px solid transparent;
    padding: 7px 12px;
    font-size: 14px;
    line-height: 1.71428571;
    vertical-align: middle;
}

.filter-restaurant-btn>img, .filter-restaurant-btn-list>img{
    width: 24px;
    height: 24px;
    vertical-align: middle;
}

.sort-card, .sort-list, .sort-dropdown{
float: left!important;
margin:10px;
}


.sort-card .btn-default {
    color: #555;
    background-color: #fff;
    border-color: #e4e4e4;
}

.store-sort-btn-wrap{
	text-align: center;
	width:800px;
}



.btn.dropdown-toggle {
    text-align: left!important;
}

.btn-default.active, .btn-default.focus, .btn-default:active, .btn-default:focus, .btn-default:hover, .open>.dropdown-toggle.btn-default {
    color: #555;
    background-color: #fff;
    border-color: #d5d5d5;
}

.dropdown-menu>li>a {
    clear: both;
    font-weight: 400;
    color: #333;
}


.dropdown-menu {
	position: absolute;
	display:none;
    float: none;
    width: 160px;
    height:100px;
    padding: 5px 5px;
    margin: 2px 0 0;
    list-style: none;
    font-size: 14px;
    text-align: left;
    background-color: #fff;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 0;
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
    background-clip: padding-box;
    
    list-style: none;
	font-size: 14px;
	
	z-index: 1000 !important;
}


.caret{
    display: inline-block;
    width: 0;
    height: 0;
    border-top: 4px dashed;
    border-top: 4px solid\9;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
}

.dropdown-menu>li>a {
    clear: both;
    font-weight: 400;
    color: #333;
    ackground-color: transparent;
        display: block;
    padding: 3px 20px;
    line-height: 1.71428571;
    white-space: nowrap;
    text-decoration: none;
}

.open{
display:block;
}



.store-result-wrap{
margin-bottom: 10px;
position: relative;
padding: 5px 10px;
background-color: #fff;
display: block;
width:800px;
height:95%;
clear:both;
vertical-align: middle;

}


.img-star{
width:15px;
height:15px;
flex: auto;

}

.stars.pull-left{
list-style:none;
float: left;
padding:0;
margin : 2px;

}
.stars.pull-left li{
float:left;
margin-right : 2px;

}

.clearfix{
width:660px;
clear:both;
margin-bottom:5px;
float:left;
margin-right:5px;
}

.clearfix>h3{
float:left;
}

.starfix{
margin-bottom:2px;
}

.starfix>p{
color: #777;
font-size: 12px;
margin-left: 3px;
padding-top : 3px;
vertical-align: middle;
}

#list-restaurant{
width:800px;
height:600px;
vertical-align: middle;

}

.thumb-restaurant header {
    border-bottom: 1px solid orange;
}

.thumb-restaurant.br-card{
width:300px;
height:550px;
clear:both;
margin-top:5px;
margin-left:0px;

}

.thumb-restaurant.br-list{
width:660px;
height:200px;

margin-top:5px;
margin-left:0px;

}


.embed-responsive .embed-responsive-item, .embed-responsive embed, .embed-responsive iframe, .embed-responsive object, .embed-responsive video {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    height: 100%;
    width: 100%;
    border: 0;
    clear:both;
    margin:0;
    background-position : center;
    background-size: 100%;
    background-repeat: no-repeat;
}



.embed-responsive-16by9 {
    padding-bottom: 56.25%;
}

.carousel-inner, .collapsing, .dropdown-menu .divider, .embed-responsive, .modal, .modal-open, .nav .nav-divider, .sr-only {
    overflow: hidden;
}

.embed-responsive {
    position: relative;
    display: block;
    height: 160px;
    padding: 0;
}

.restaurant-thumb-item{
margin-right:15px;
float : left;
display : inline-block;
position : absolute;
}

.restaurant-thumb-item-list{
padding: 15px 20px;
margin:3px 10px;
display : inline-block;
position : relative;

}

.foodtype{
margin: 0 5px 0 0;
letter-spacing: -.8px;
list-style: none;
line-height: 1.5;
position: relative;
padding-left: 0;
display: inline-block;
color: #777;
font-size: 12px;

}
.foodtype>li{
float:left;
}
.foodtype>li:before {
    display: inline;
    content: "#";
}

.thumb-caption
{
	padding: 20px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #e4e4e4;
}

.thumb-caption-list
{
	padding: 20px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #e4e4e4;
}



.thumb-caption-list .info .card-writer
{
   clear: both;
    text-align: right;
    font-weight: 700;
    height: 20px;
    width: 600px;
    color: black;
    font-size: 15px;

}

.dl-horizontal {
    width: 660px;
    display: flex; /* Flexbox를 사용하여 자식 요소를 나란히 배치합니다. */
    flex-wrap: nowrap; /* 자식 요소가 넘칠 경우 줄 바꿈을 방지합니다. */
}

.dl-horizontal dd>a
{
	color: #222;
}
.dl-horizontal dt { 

     width: 60px; /* dt에 원하는 너비를 설정합니다. */
    box-sizing: border-box;
    padding: 5px;
    margin: 0;
}

.dl-horizontal dd {
     flex: 1; /* 나머지 공간을 dd가 채우도록 합니다. */
    box-sizing: border-box;
    padding: 5px;
    margin: 0;
    overflow:hidden;
    height:70px;
    text-overflow: ellipsis 
}


.thumb-restaurant .thumb-caption .content {
    font-size: 14px;
    line-height: 1.85714286;
    white-space: nowrap;
    white-space: initial;
    height: 78px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    max-height: 78px;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
}

.thumb-caption .info {
    padding: 20px 0;
    margin-bottom: 20px;
    border-bottom: 1px solid #e4e4e4;
}

.thumb-restaurant .evaluate-btn-wrap {
    overflow: hidden;
}
.thumb-restaurant .anchor-restaurant-arrow {
    float: right!important;
    line-height: 1.85714286;
    font-weight: 600;
    color: orange;
    letter-spacing: -.8px;
    padding-top: 3px;
    
}

.icon-fa-star-empty:before {
    content: '\2661'; 
}


/* 플러스버튼  */
.plusBtn{
width: 100%;
height: 44px;
color: white;
margin:auto;
}
.plusBtn>div{
width:40px;
height:40px;
color: white;
font-size:35px;
border-radius: 20px;
margin:0;
border:1px solid orange;
background-image: url('../images/plus-sign.png');
background-repeat: no-repeat;
background-position: center;
background-size: 100%;
position:relative;
left:45%
}

/* 플러스버튼 끝  */


/* 모달창 시작 */
.modal{
 position:fixed;
 display:none;
 justify-content: center;
 top:0;
 left:0;
 width:100%;
 height:100%;
 background-color: rgba(0,0,0,0.4);
 z-index: 2000;
}
.modal_body{
 position:relative;
 top:50%;
 width:900px;
 height:1000px;
 text-align: center;
 background-color: rgb(255,255,255); /
 border-radius:10px;
 box-shadow:0 2px 3px 0 rgba(34,36,38,0.15);
 transform:translateY(-50%);
}

/*모달창 끝  */

</style>

<script>
	$(function(){
		
		$(".sort-dropdown").click(function(){
			
			if($(".dropdown-menu").css("display")=="block")
			{
				
				$(".dropdown-menu").removeClass("open");	
			}else{
				
				$(".dropdown-menu").addClass("open");	
			}
		});
		 $('.card-content__more-btn').change(function () {
	            var description = $(this).closest('.dl-horizontal').find('.card-description');
	            description.toggleClass('expanded');
	        });//.sort-dropdown
	        
	    
	    $("#btn-fr-card").click(function(){
	    	location.href="review_view_card.jsp";
	    });//카드형 클릭
	        
	    /* 모달창 */    
		$(".thumb-restaurant").click(function(){
			
			$(".modal").css("display","block");	
			
		});
	    
		
		$(".modal").click(function(){
			
			$(".modal").css("display","none");
			
		});    
	    
	    $(".anchor-restaurant-arrow").click(function(){
	    	
	    	$(".modal").css("display","block");	
	    });

	})//function

</script>

</head>

<body>
<div style="width:100%">
<iframe src="../html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;"></iframe>
</div>
<div id="store-search-wrap">
	<section id="search-tab-all" class="container-lnb">
		<form class="searchFrm">
			<div class="search-group">
				<div class="search-bar-wrap">
					<input id="input-filter-query" type="text" name="query" placeholder="맛집 검색어 입력" class="form-control"> 
				</div> 
				<div class="search-btn-wrap"> 
					<span class="search-all">
						<button type="submit" data-toggle="tooltip" data-placement="left" title="" data-original-title="키워드 검색" class="btn btn-default">
						<i class="icon-search"></i>
						</button>
					</span>
				</div>
			</div>
		</form>
	</section>	
</div>

<div style="height:95vh;" id ="store-search-list-wrap">
<div id="store-sort-wrap">
<div class="store-sort-btn-wrap">
	<div class="sort-card">
		<button id="btn-fr-card" type="button" class="filter-restaurant-btn-list" data-value="card">
		<img src="../images/img_search_card.png" class="card-img"><span class="hidden-xs">카드형</span></button>
	</div>
	<div class="sort-list">
		<button id="btn-fr-list" type="button" class="filter-restaurant-btn" data-value="list">
		<img src="../images/img_search_list.png" class=".card-img"> <span class="hidden-xs">목록형</span></button>
	</div>
	<!-- 드롭다운메뉴 -->
	<div class="sort-dropdown">
		<button type="button" class="filter-restaurant-btn-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
	      <span class="label-btn">평점순</span>
	      <span class="caret"></span>
	    </button>
	 <ul class="dropdown-menu">
      <li><a href="#" data-value="">평점순</a></li>
      <li><a href="#" data-value="headerInfo.nameKR,type,asc">가나다순</a></li>
      <li><a href="#" data-value="createdDate,desc">최신순</a></li>
    </ul>
	</div>
</div>
</div>

<div class="store-result-wrap">
	

<ul id="list-restaurant" class="responsive-list-3 type-card" data-mustache-id="tmpl-restaurant" 
data-tab-mode="single" data-brand-mode="false" data-search-mode="true" data-query="" data-food-type="" data-food-type-detail="" 
data-feature="" data-location="" data-location-detail="" data-area="" data-area-detail="" data-price-range="" 
data-ribbon-type="" data-year="" data-evaluate="" data-sort="" data-list-type="" data-is-search-name="false" 
data-recommended="false" data-principal="" data-bc="false" style="position: relative; height: 600px;" >
	   
	
<li class="restaurant-thumb-item-list" data-id="29206">

    <div class="thumb-restaurant br-list" data-href="/restaurants/29206" style="cursor: pointer">

        <header>
            <div class="header-status">
                <ol class="foodtype">
                    <li>일식</li>
                    <li>일식오마카세</li>
                    <li>모던재패니즈</li>
                    <li>컨템포러리</li>
                </ol>
            </div>

            <div class="header-title">

              <div class="starfix">
                <ul class="stars pull-left">
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                </ul>
				<p>3.0</p>
              </div>

              <div class="clearfix">
                    <h3>
                        고료리켄
                    </h3>

                    <a class="bookmark " href="javascript:showPremiumDialog();" data-toggle="tooltip" data-placement="left" title="" data-original-title="북마크">
                        <i class="icon-fa-star on"></i>
                        <i class="icon-fa-star-empty off"></i>
                    </a>
                </div>
            </div>

        </header>

        <div class="thumb-caption-list">
            <div class="info">
            	<div class="card-writer"><span style="color:#ff7100">삼식세끼</span>의 리뷰입니다.</div>
                <dl class="dl-horizontal">	
                    <dt>리뷰</dt>
                    <dd class="card-description"> 김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.
                    
                    </dd>
                    
                </dl>
            </div>
            <div class="evaluate-btn-wrap">
              <a class="anchor-restaurant-arrow" href="#">더보기+<i class="icon-fa-angle-right"></i></a>
            </div>

        </div>
    </div>
</li>
   
   
<!-- 1개의 가게 리스트 시작 -->
<li class="restaurant-thumb-item-list" data-id="29206">

    <div class="thumb-restaurant br-list" data-href="/restaurants/29206" style="cursor: pointer">
        <header>
            <div class="header-status">
                <ol class="foodtype">
                    <li>일식</li>
                    <li>일식오마카세</li>
                    <li>모던재패니즈</li>
                    <li>컨템포러리</li>
                </ol>
            </div>

            <div class="header-title">

              <div class="starfix">
                <ul class="stars pull-left">
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                </ul>
				<p>3.0</p>
              </div>

              <div class="clearfix">
                    <h3>
                        고료리켄
                    </h3>

                    <a class="bookmark " href="javascript:showPremiumDialog();" data-toggle="tooltip" data-placement="left" title="" data-original-title="북마크">
                        <i class="icon-fa-star on"></i>
                        <i class="icon-fa-star-empty off"></i>
                    </a>
                </div>
            </div>

        </header>

        <div class="thumb-caption-list">
            <div class="info">
            	<div class="card-writer"><span style="color:#ff7100">삼식세끼</span>의 리뷰입니다.</div>
                <dl class="dl-horizontal">	
                    <dt>리뷰</dt>
                    <dd class="card-description"> 김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.</dd>
                    
                </dl>
            </div>
            <div class="evaluate-btn-wrap">
              <a class="anchor-restaurant-arrow" href="#">더보기+<i class="icon-fa-angle-right"></i></a>
            </div>

        </div>
    </div>
</li>
<!-- 1개의 가게 리스트 끝 -->



<!-- 1개의 가게 리스트 시작 -->
<li class="restaurant-thumb-item-list" data-id="29206">

    <div class="thumb-restaurant br-list" data-href="/restaurants/29206" style="cursor: pointer">
        <header>
            <div class="header-status">
                <ol class="foodtype">
                    <li>일식</li>
                    <li>일식오마카세</li>
                    <li>모던재패니즈</li>
                    <li>컨템포러리</li>
                </ol>
            </div>

            <div class="header-title">

              <div class="starfix">
                <ul class="stars pull-left">
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                  <li>
                    <img class="img-star" src="../images/star_yellow.png">
                  </li>
                </ul>
				<p>3.0</p>
              </div>

              <div class="clearfix">
                    <h3>
                        고료리켄
                    </h3>

                    <a class="bookmark " href="javascript:showPremiumDialog();" data-toggle="tooltip" data-placement="left" title="" data-original-title="북마크">
                        <i class="icon-fa-star on"></i>
                        <i class="icon-fa-star-empty off"></i>
                    </a>
                </div>
            </div>

        </header>

        <div class="thumb-caption-list">
            <div class="info">
            	<div class="card-writer"><span style="color:#ff7100">삼식세끼</span>의 리뷰입니다.</div>
                <dl class="dl-horizontal">	
                    <dt>리뷰</dt>
                    <dd class="card-description"> 김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.</dd>
                    
                </dl>
            </div>
            <div class="evaluate-btn-wrap">
              <a class="anchor-restaurant-arrow" href="#">더보기+<i class="icon-fa-angle-right"></i></a>
            </div>

        </div>
    </div>
</li>
<!-- 1개의 가게 리스트 끝 -->
</ul>
	
	</div>
	<div class="plusBtn">
		<div></div>
	</div>
</div>

<div style="padding-top:60px;">
<iframe src="../html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
		

<!-- 모달창 시작  -->
<div class="modal">
        <div class="modal_body">
           <iframe src="./review_view.jsp"  frameborder='0' scrolling="no" width="900px" height="1000px"></iframe>
        </div>
 </div>
<!-- 모달창 끝  -->

</body>

</html>