<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
 <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>삼식세끼 메인페이지</title>
  <link rel="stylesheet" href="../resources/css/setting.css">
  <link rel="stylesheet" href="../resources/css/plugin.css">
  <link rel="stylesheet" href="../resources/css/template.css">
  <link rel="stylesheet" href="../resources/css/common.css">
  <link rel="stylesheet" href="../resources/css/style2.css">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" media="screen" href="../resources/css/style.css">
  <link rel="stylesheet" href="../resources/css/login.css">
	<style>
*, :after, :before {
    box-sizing: border-box;
    margin:auto;
    list-style:none;
    text-decoration: none;
}
.img_logo{
margin:0;
}
form {
    display: block;
    margin-top: 0em;
}
#store-search-wrap{
margin-top:150px;
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
width: 1000px;
}
.search-group .search-bar-wrap{
    margin-top:15px;
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
    border-color: #E4E4E4;
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
    border-color: #D5D5D5;
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
.dropdown-menu-header {
	position: absolute;
	display:none;
    float: none;
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
	
 	width: 400px;
    height: 200px;
    position: fixed;
    top: 75px;
    left: 300px;
}
.dropdown-menu-header>ul{
	float:left;
}
.dropdown-colum{
width:100px;
height:150px;
margin-right:20px;
float:left;
padding:10px;
}
dropdown-colum li{
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
height:100%;
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
width:300px;
clear:both;
margin-bottom: 5px;
float:left;
margin-right:5px;
margin-top:5px;
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
    border-bottom: 1px solid #E4E4E4;
}
.dl-horizontal dd>a
{
	color: #222;
}
.dl-horizontal dt {
	float: left;
    clear: left;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    text-align: left;
    width: 60px;
    font-size: 14px;
    line-height: 1.85714286;
    font-weight: 400;
    color: #111;
}
.dl-horizontal dd {
    margin-left: 60px;
    font-size: 14px;
    line-height: 1.85714286;
    color: #222;
    word-wrap: break-word;
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
    border-bottom: 1px solid #E4E4E4;
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
.plusBtn{
width:40px;
height:40px;
color: white;
position: absolute;
left: 550px;
}
.plusBtn>div{
width:40px;
height:40px;
color: white;
font-size:35px;
border-radius: 20px;
margin:0;
border:1px solid orange;
background-image: url('./images/plus-sign.png');
background-repeat: no-repeat;
background-position: center;
background-size: 100%;
}
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
</style>

</head>


<body data-aos-easing="ease" data-aso-duration="400" data-aos-delay="0">
  <!-- [S]glamping-N1 -->
 <header class="glamping-N1" data-bid="MQlPkiCKUY" id="" style="background-color: rgb(255, 255, 255);">
    <div style="background:#ff7100; " class="header-container container-lg">
      <div class="header-left" style="display:block; margin:0;">
        <h1 class="header-title" style="margin:auto;">
          <a href="/Integration/html/main.jsp" style="margin:0;" >
            <img style="display:block;" src="../medias/4d4f3a8c2c4247a887c0ea04547efe26.png" alt="">
          </a>
        </h1>
      </div>
      <div class="header-center">

        <ul class="header-gnblist">
      
          <li class="header-gnbitem item-active">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>맛집정보</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a target="_top" class="header-sublink" href="../searchCard.jsp">
                  <span>맛집정보보기</span>
                </a>
              </li>
              <li class="header-subitem">
                <a target="_top" class="header-sublink" href="../regStore.jsp">
                  <span>가게등록</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>유저게시판</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a target="_top" class="header-sublink" href="../review/review_view_card.jsp">
                  <span>유저추천맛집</span>
                </a>
              </li>
              <li class="header-subitem">
                <a target="_top" class="header-sublink" href="../teamProject/teamBoard.jsp">
                  <span>자유게시판</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a target="_top" class="header-gnblink" href="../teamProject/teamNoticeMain.jsp">
              <span>공지사항</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
              </li>
            </ul>
          </li>
          <li style="float:right" class="header-gnbitem">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>내정보</span>
            </a>
            <ul class="header-sublist">
              <div>
                <li class="header-subitem">
                  <a class="header-sublink" target="_top" href="../Login.jsp">로그인</a>
                  </a>
                </li>
                <li class="header-subitem">
                  <a class="header-sublink" target="_top" href="../Insert.jsp">회원가입</a>
                  </a>
                </li>
              </div>
              <div>
                <li class="header-subitem">
                  <a class="header-sublink" href="javascript:void(0)">
                    <span>최근본맛집</span>
                  </a>
                </li>
                <li class="header-subitem">
                  <a class="header-sublink" href="javascript:void(0)">
                    <span>마이페이지</span>
                  </a>
                </li>
                <li class="header-subitem">
                  <a class="header-sublink" href="javascript:void(0)">
                    <span>로그아웃</span>
                  </a>
                </li>
              </div>
            </ul>
          </li>

        </ul>
      </div>
      <div class="header-right">
        <div class="header-utils">
          <button class="btn-allmenu header-utils-btn">
          </button>
          <button class="btn-moclose header-utils-btn">
            <img src="resources/icons/ico_close_white.svg" alt="닫기">
          </button>
        </div>
      </div>
    </div>

  </header>
  <!-- [E]glamping-N1 -->
  <main class="th-layout-main ">
    <!-- [S]glamping-N4 -->
    <!-- [E]glamping-N4 -->
    <!-- [S]glamping-N5 -->
    <div class="glamping-N5" data-bid="QhlpkiCKwW" id="">
    </div>
    <!-- [E]glamping-N5 -->
    <!-- [S]glamping-N6 -->
    <div class="glamping-N6" data-bid="AwlPKIcKx7" id="">
    </div>
    <!-- search -->
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
    <!-- search -->  
    <!-- [E]glamping-N6 -->
    <!-- [S]glamping-N7 -->
   <div class="main">
    <div class="glamping-N7" data-bid="PelPkICkxH" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">삼식세끼가 추천합니다.</h2>
          </div>
          <div class="contents-swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="contents-slide-group container-md">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../medias/7c25da3216c74714b1502b2396065861.jpg" alt="">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">얼큰한 칼국수 맛집 베스트 20곳</h2>
                      <p class="cardset-desc">"한국인 맞춤 얼큰칼칼 칼국수 다모여!"</p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../medias/f713c35b1d094e008763f1311b6046d5.jpg" alt="">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">일본라멘</h2>
                      <p class="cardset-desc"> 강촌에 캠프랜드가 새로 생겼습니다. 캠핑장 <br> 에서 서향의 노을이 아릅답습니다. </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../medias/2f629a1e77c54eb5a36eb57c67bf82e2.jpg" alt="">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">여의도</h2>
                      <p class="cardset-desc"> 강촌에 캠프랜드가 새로 생겼습니다. 캠핑장 <br> 에서 서향의 노을이 아릅답습니다. </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../medias/ee1dec15378c4555bae9d2f84c657d3a.jpg" alt="">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">어복쟁반 맛집 베스트 15곳</h2>
                      <p class="cardset-desc">"​여의도에서 어디 가야 잘 먹었다고 할까?"<br>​<br></p>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
          <div class="contents-control">
            <div class="swiper-pagination"></div>
            <a href="javascript:void(0);" class="btnset btnset-text btnset-icon">자세히보기 <div class="btnset-img">
                <img src="../resources/icons/ico_more_black.svg" alt="자세히보기 아이콘">
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]glamping-N7 -->
    <!-- [S]glamping-N8 -->
    <div class="glamping-N8" data-bid="CjlPkIcKXv" id="">
    </div>
    <!-- [E]glamping-N8 -->
    <!-- [S]glamping-N9 -->
    <div class="glamping-N9" data-bid="jhlPkiCky7" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">삼식세끼 가족들의 생생 리뷰</h2>
            <p class="textset-desc">삼식세끼의 생생 리뷰를 만나보세요.</p>
          </div>
          <div class="contents-control">
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
          </div>
        </div>
        <div class="contents-container">
          <div class="contents-swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_1.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_2.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_3.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_4.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_5.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_1.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_2.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_3.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_4.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group">
                  <div class="cardset cardset-user">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="../resources/images/img_profile_5.png" alt="이미지">
                    </figure>
                    <div class="cardset-profile">
                      <p class="cardset-text"> 템플릿하우스로 사용 으로 업무 시간과 생산성을 높일 수있습니다. 다양한 프로젝트 활용과 자주 쓰는 코딩을 미리 저장하고 빠르게 적용할 수 있어서 너무 편리하고 좋아요 </p>
                      <p class="cardset-info">글램핑 구매자</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]glamping-N9 -->
  	</main>
 </div>  
  <!-- [S]glamping-N3 -->
<div>
<iframe src="../html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
  <!-- [E]glamping-N3 -->
  <script src="../resources/js/setting.js"></script>
  <script src="../resources/js/plugin.js"></script>
  <script src="../resources/js/template.js"></script>
  <script src="../resources/js/common.js"></script>
  <script src="../resources/js/script.js"></script>
</body>