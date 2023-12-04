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

*{
margin:0;
padding:0;
box-sizing: border-box;
}
#store-info-wrap{

width:900px;
height:1000px;
padding:
}

.store-food-images{
width:100%;
height:20%;
}

.store-food-image-one{
width:25%;
height:100%;
float: left;
}

.store-info-name{
width:100%;
height:40px;
margin-bottom: 2px;
border-bottom: 1px solid #e4e4e4;

}

.store-info-grade{
width:100%;
height:40px;

}

.store-info-hit{
width:25%;
height:40px;

padding:8px;

}

.store-info-heart{
width:25%;
height:40px;
padding:8px;
}

.store-info-score{
width:25%;
height:40px;
padding:8px;
}

.sameraw-left{
float:left;
}
.sameraw-right{
float:right;
}

.store-info-reaction{
width:100%;
height:40px;
padding:10px;
margin-bottom:20px;
border-bottom: 1px solid orange;

}
.btn-heart{
width:10%;
height:100%;

}

.btn-review{
width:25%;
height:100%;

}

.store-content-wrap{
width:100%;
height:20%;
border:1px solid #e4e4e4;
}

.store-info-title{
width:20%;
height:100%;
display : flex;
position: relative;
text-align: center;
}

.store-info-title>div{
width:100%; 
height:20%;
text-align: center;
position: relative;
top: 40%;
}
.store-info-content{
width:80%;
height:100%;
padding:10px;
font-size:12px;
color:#777;
}
.store-info-content>p{
vertical-align: middle;
}
.store-info-all{
width:100%;
height:38%;

margin-top:15px;
border:1px solid #e4e4e4;
box-sizing: border-box;
}





.store-map{
width:50%;
height:100%;
background-color: #e4e4e4;
}


.store-name{
width:80%;
height:100%;
padding:8px;
text-align: center;

}

.store-close-btn{
width:20%;
height:100%;

}
.icon-fa-star-empty:before {
    content: '\2661'; 
}


.store-info{
width:50%;
height:100%;


}

.store-info>ul{
list-style: none;
}
.store-info>ul li{
align-items: center;
display: flex;

text-align: center;
}

.store-opening, .store-parking, .store-menu, .store-address, .store-phone, .store-tags{
padding:8px;
width:20%;
clear : both;
float: left;
display: block;
 font-size: 12px;
}
.store-opening{
height:100%;


}

.store-opening .store-parking .store-menu .store-address .store-phone .store-tags:after{
width:30px;
border:1px solid #e4e4e4;
}

.store-opening-content, .store-parking-content, .store-menu-content, .store-address-content, .store-phone-content, .store-tags-content{
height: 30px;
 width: 78%;
 position: relative;
 font-size: 13px;
 float:left;
 text-align: left;


}
.store-menu-content{
 height: 100px;
 }
 
.store-address-content{
  height: 60px;
 }
.store-parking{
height:100%;

}
.store-menu{
height:120px;
line-height: 100px;

}
.store-address{
height:80px;
line-height:30px;

}

.store-phone{
height:100%;

}

.store-tags{
height:10%;

}

.store-food-image-one{
    background-position : center;
    background-size: 100%;
    background-repeat: no-repeat;
}

.store-food-image-one.first{

}
.store-food-image-one.second{

}

.store-food-image-one.thirth{

}
.store-food-image-one.fourth{

}

.close-button{
height: 40px;
width: 40px;
float: right;
vertical-align: middle;
text-align: center;
background-color: orange;
}

.close-button p{
clear: both;
display: contents;
font-size: 30px;
text-align: center;
vertical-align: middle;
color:white;
}

.store-content-wrap>p{
vertical-align: middle;
}
</style>
</head>
<body>
<script>
	$(function(){
		
		$(".close-button").click(function(){
			
			$(".modal").css("display","none");
		})
		
		$(".btn-heart.sameraw-right").click(function(){
			location.href="./review/review_write.jsp";
		})
	})

</script>


<div id="store-info-wrap">
	<div class="store-food-images"> <!-- 이미지 -->
		<div class="store-food-image-one first" style="background-image:url(./images/tempfoodImage.jpg);"></div>
		<div class="store-food-image-one second" style="background-image:url(./images/tempfoodImage.jpg);"></div>
		<div class="store-food-image-one thirth" style="background-image:url(./images/tempfoodImage.jpg);"></div>
		<div class="store-food-image-one fourth" style="background-image:url(./images/tempfoodImage.jpg);"></div>
	</div>
	
	<div style ="box-sizing:border-box; width:850px; height: 900px; padding:25px; margin:auto;">
	<div class="store-info-name">
		<div class="store-name sameraw-left"><h3>더그린테이블</h3></div>
		<div class="store-close-btn sameraw-left"> </div>
	</div><!-- 상호명 -->
	<div class="store-info-grade"><!-- 조회수 좋아요 평점 -->
		<div class="store-info-hit sameraw-left"><p>조회수 : 1</p></div>
		<div class="store-info-heart sameraw-left"><p>좋아요 수 : 2</p></div>
		<div class="store-info-score sameraw-left"><p>평점 : 3</p></div>
	</div>
	<div class="store-info-reaction"> <!-- 좋아요 리뷰쓰러가기 -->
		<div class="btn-heart sameraw-right">
			<button>리뷰쓰기</button>
		</div>
		<div class="btn-review sameraw-right">
			<div class="sameraw-left">좋아요</div>
			<a style="text-decoration: none;" class="bookmark sameraw-left" href="javascript:showPremiumDialog();" data-toggle="tooltip" data-placement="left" title="" data-original-title="북마크">
                <i class="icon-fa-star on"></i>
                <i class="icon-fa-star-empty off"></i>
            </a>
			
		</div>
	</div>
	<div class="store-content-wrap"><!-- 매장소개 -->
		<div class="store-info-title sameraw-left"><div><p>매장소개</p></div></div>
		<div class="store-info-content sameraw-left"> 
		 <p>김건 셰프가 내는 컨템포러리 재패니즈 퀴진. 신선한 제철 식재료를 사용해 만든 요리를 코스로 낸다. 일식에 프렌치 또는 이탈리안 터치가 가미된 스타일의 오마카세를 맛볼 수 있다.
		</p>
		</div>
	</div>
	<div class="store-info-all">
		<div class="store-info sameraw-left">
			<ul>
				<li>
					<div class="store-opening">
					<p>영업시간</p>
					</div>
					<div class="store-opening-content">
					<p>영업시간</p>
					</div>
				</li>
				<li>
					<div class="store-parking">
					<p>주차</p>
					</div>
					<div class="store-parking-content">
					<p>주차금지</p>
					</div>
				</li>
				<li>
					<div class="store-menu">
					<p>메뉴</p>
					</div>
					<div class="store-menu-content">
					<p>소고기 무한리필 <br> 꽃등심 <br> 맛있겠다</p>
					</div>
				</li>
				<li>
					<div class="store-address">
					<p>주소</p>
					</div>
					<div class="store-address-content">
					<p>서울 구로구 구로동 구로 뭐시기 </p>
					</div>
				</li>
				<li>
					<div class="store-phone">
					<p>전화</p>
					</div> 
					<div class="store-phone-content">
					<p>02-1111-1111</p>
					</div>
				</li>
				<li>
					<div class="store-tags">
					<p>태그</p>
					</div>
					<div class="store-tags-content">
					<p>#잠좀 #자고 #싶다 </p>
					</div>
				</li>
			</ul>
		</div>
		<div class="store-map sameraw-left"></div>
	</div>
	</div>
</div>

</body>
</html>