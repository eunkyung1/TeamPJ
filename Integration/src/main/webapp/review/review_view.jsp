<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/content_view.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	
	$(".sbtnMini.list").click(function(){
		
		$('.modal', parent.document).hide();
		return false;
	});

	$(".sbtnMini.update").click(function closeThis(){
		
		location.replace("review_update.jsp"); 
	});
	
});
</script>
<style>

.img_total{display:flex;  justify-content: space-between;}
.img_total>a>img{width:150px; height:150px;}

</style>


</head>

<body style="margin-top:60px;">
<div id="allwrap">
<div id="wrap">


	<!-- container -->
	<div id="container">
			<!-- contents -->
			<div id="contents">
				<form action="#" name="Frm" method="post" enctype="multipart/form-data"></form>
				<div id="mypage">
					<h2><strong style="color:#ff7100">내가 작성한 리뷰</strong></h2>
					<div class="checkDivTab">
						<table class="checkTable" border="3" cellspacing="0">
							<colgroup>
							<col width="20%" />
							<col width="*" />
							</colgroup>
							<tbody>
								<div class="img_total">
									<a href="#"><span><</span></a>
									<a href="#"><img src="../images/1.png"></a>
									<a href="#"><img src="../images/1.png"></a>
									<a href="#"><img src="../images/1.png"></a>
									<a href="#"><span>></span></a>
								</div>
								<tr>
									<th scope="row"><span>가게이름</span></th>
									<td>맛있는집</td>
								</tr>
								<tr>
									<th scope="row"><span>작성자</span></th>
									<td >닉네임도둑</td>
								</tr>
								<tr>
									<th scope="row"><span>제목</span></th>
									<td>내가 제일 잘나가</td>
								</tr>
								<tr>
									<th scope="row"><span>평점</span></th>
									<td >
										<ul class="pta">
											<li>
							                    <img class="img-star" src="../images/star_yellow.png">
							                  </li>
							                  <li>
							                    <img class="img-star" src="../images/star_yellow.png">
							                  </li>
							                  <li>
							                    <img class="img-star" src="../images/star_yellow.png">
							                  </li>
							                  <li>
							                    <img class="img-star" src="../images/star_yellow.png">
							                  </li>
							                  <li>
							                    <img class="img-star" src="../images/star_yellow.png">
							                  </li>
											</li>
										</ul>
										<p>5.0</p>
										
									</td>
								</tr>

								<tr>
									<th scope="row" ><span>리뷰내용</span></th>
									<td >
									<textarea class="tta" cols="500" rows="10" placeholder="의견을 입력하세요..." style="overflow-y: scroll; overflow-x: hidden; height:250px;" required>
									
									</textarea>
									</td>
								</tr>
								<tr class="ktag">
									<th scope="row" ><span>태그</span></th>
									<td class="kword">
									<a href="#"><span>맛있다</span></a>
									<a href="#"><span>맛있는</span></a>
									<a href="#"><span>맛</span></a>
									<a href="#"><span>있</span></a>
									<a href="#"><span>는</span></a>
									<a href="#"><span>혼자와야해</span></a>
									<a href="#"><span>커플금지</span></a>
									<a href="#"><span>혼자놀거야</span></a>
									<a href="#"><span>돈무브</span></a>
									<a href="#"><span>나는솔로</span></a>
									</td>
								</tr>								
								
							
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="#" class="sbtnMini update">수정</a></li>
								<li><a href="#" class="sbtnMini delete">삭제</a></li>
								<li><a href="#" class="sbtnMini list">목록</a></li>
							</ul>
						</div>
					</div>
				</form>					
				</div>
			</div>
			<!-- //contents -->


		</div>
	</div>
	<!-- //container -->








</div>
</div>



</body>
</html>