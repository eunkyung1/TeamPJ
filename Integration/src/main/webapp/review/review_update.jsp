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
<link rel="stylesheet" type="text/css" href="../css/content_write.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	
	$(".nbtnbig").click(function(){
		
		history.go(-1);
		$('.modal', parent.document).hide();

		return false;
	});//click
	
});
</script>
	
<style>

.img_box{display:flex;  justify-content: space-between;}
.img_box>img{width:150px; height:150px;}

</style>

</head>
<body style="margin-top:30px;">


<div id="allwrap">
<div id="wrap">


	<!-- container -->
	<div id="container">
			<!-- contents -->
			<div id="contents">
			
			
				<form action="doN_update.do" name="Frm" method="post" enctype="multipart/form-data"></form>
				<input type="hidden" name="page" value="${page }">
				<input type="hidden" name="boardid" value="${redto.boardid}">
				<input type="hidden" name="oldfile value="${redto.filename}">
				
				<div id="mypage">
					<h2><strong>리뷰 수정</strong></h2>
					<div class="checkDivTab">
						<table class="checkTable" border="3" cellspacing="0">
							<colgroup>
							<col width="20%" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
								<!--css 수정  83줄-->
									<th scope="row"><span>가게이름</span></th>
									<td >
									<input type="text" class="searchtxt" name="storename" id="storename" value="${redto.storename}">
									</td>
								</tr>
								<tr>
								<!-- css수정 80줄  -->
									<th scope="row"><span>리뷰제목</span></th>
									<td >
										<input type="text" class="wlong" name="title" value="${redto.title}"/>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>평가</span></th>
									<td >
										<ul class="pta">
											<li>
												<input type="radio" name="rate" id="starFive"  value="5.0" <c:if test="${redto.rate == 5}">checked</c:if>/>
												<label for="starFive" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="starFour" value="4.0" <c:if test="${redto.rate == 4}">checked</c:if>/>
												<label for="starFour" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="starThree" value="3.0" <c:if test="${redto.rate == 3}">checked</c:if>/>
												<label for="starThree" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="startwo" value="2.0" <c:if test="${redto.rate == 2}">checked</c:if> />
												<label for="startwo" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="starOne" value="1.0" <c:if test="${redto.rate == 1}">checked</c:if>/>
												<label for="starOne" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th scope="row" ><span>상세 내용</span></th>
									<td >
									<textarea class="tta" cols="500" rows="10" style="overflow-y: scroll; overflow-x: hidden; height:250px;" >${redto.bcontent}</textarea>
									</td>
								</tr>
								<tr class="ktag">
									<th scope="row" ><span>태그</span></th>
									<td>
									<input type="text" name="tags" class="ttxt" value="<c:forEach var='c' items='${redto.tagarr}'><c:out value='${c}'/><c:if test='${not loop.last}'>, </c:if></c:forEach>">
									</td>
								</tr>
						<!-- 수정 -->							
								<script>
								function readURL(input) {
									  if (input.files && input.files[0]) {
									    var reader = new FileReader();
									    reader.onload = function(e) {
									      document.getElementById('preview').src = e.target.result;
									    };
									    reader.readAsDataURL(input.files[0]);
									  } else {
									    document.getElementById('preview').src = "";
									  }
									}
								
								</script>								
								<tr>
									<th scope="row"><span>파일 첨부</span></th>
									<td>
										<input type="file" name="filename" class="file_add"  onchange="readURL(this)">
									</td>
								</tr>
								<tr>
									<th scope="row"><span>이미지</span></th>
									<td>
										<img id="preview" style="width:50%"/>						
									</td>
								</tr>										
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="#" class="nbtnbig">수정완료</a></li>
								<li><a href="#" class="sbtnMini">확인</a></li>
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