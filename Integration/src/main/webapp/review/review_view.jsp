<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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
/* 수정 */
	$(".sbtnMini.update").click(function closeThis(){
		
		location.replace("review_update.do?boardid=${redto.boardid}"); 
	});
	
	
});//
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
			
				
				<div id="mypage">
					<h2><strong style="color:#ff7100">${redto.storename} 리뷰</strong></h2>
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
				<!--수정  -->
								<tr>
									<th scope="row" ><span>가게이름</span></th>
									<td>${redto.storename}</td>
								</tr>
								<tr>
									<th scope="row"><span>작성자</span></th>
									<td>${redto.memberid}</td>
								</tr>
								<tr>
									<th scope="row"><span>리뷰제목</span></th>
									<td>${redto.title}</td>
								</tr>
									<tr>
										<th scope="row"><span>평점</span></th>
										<td>
											<ul class="pta">
												<c:forEach begin="1" end="${redto.rate}">
													<li><img class="img-star"
														src="../images/star_yellow.png"></li>
												</c:forEach>
											</ul>
											<p>${redto.rate}</p>

										</td>
									</tr>

									<tr>
									<th scope="row" ><span>리뷰내용</span></th>
									<td >
									<textarea class="tta" cols="500" rows="10" style="overflow-y: scroll; overflow-x: hidden; height:250px;" readonly required>
									${redto.bcontent}
									</textarea>
									</td>
									
								</tr>
								<tr class="ktag">
									<th scope="row" ><span>태그</span></th>
									<td class="kword">
								<c:forEach var="c" items="${redto.tagarr}">
									<a>${c}</a>
								</c:forEach>
									</td>
								</tr>	
	
							
							</tbody>
						</table>
					</div>
				<!--수정  -->
<!-- 수정 -->
					<c:if test="${session_memberId!=null}">
					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>												
								<li><button type="button" class="sbtnMini update"><a>수정</a></button></li>				
								<li><button type="button" class="sbtnMini delete"><a>삭제</a></button></li>
								<li><button type="button" class="sbtnMini list"><a>목록</a></button></li>
												
							</ul>
						</div>
					</div>
					</c:if>
					
					<c:if test="${session_memberId==null}">
					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<!-- 수정버튼이 필요해서 임시로 수정버튼을 끌어옴. -->
								<li><button type="button" class="sbtnMini update"><a>수정</a></button></li>
								<!--끝  -->
								<li><button type="button" class="sbtnMini list"><a>목록</a></button></li>
							</ul>
						</div>
					</div>
					</c:if>
<!--수정 끝 -->					
					
					
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