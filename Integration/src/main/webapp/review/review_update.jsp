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
	});

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
				<form action="#" name="Frm" method="post" enctype="multipart/form-data"></form>
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
									<th scope="row"><span>가게검색</span></th>
									<td >
									<input type="text" class="searchtxt" placeholder="검색하세요." />
									<button class="st_search" name="searchFrm" >가게검색</button>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>제목</span></th>
									<td >
										<input type="text" class="wlong" placeholder="제목을 입력하세요." />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>평가</span></th>
									<td >
										<ul class="pta">
											<li>
												<input type="radio" name="appraisal" id="starFive" checked="checked"/>
												<label for="starFive" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="starFour" />
												<label for="starFour" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="starThree" />
												<label for="starThree" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="startwo" />
												<label for="startwo" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="appraisal" id="starOne" />
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
									<textarea class="tta" cols="500" rows="10" placeholder="의견을 입력하세요..." style="overflow-y: scroll; overflow-x: hidden; height:250px;" required></textarea>
									</td>
								</tr>
								<tr class="ktag">
									<th scope="row" ><span>태그</span></th>
									<td>
									<input type="text" class="ttxt"placeholder="태그는 ','로 구분하세요." >
								</tr>								
								<tr>
									<th scope="row"><span>파일 첨부</span></th>
									<td>
										<input type="file" name="imgfile" class="file_add">
									</td>
								</tr>								
								<tr>
									<th scope="row" class="imgtag"><span>이미지</span></th>
									<td>
										<div class="imgbox">
											<img style="width:120px; margin:5px; height:150px;" src="../images/1.png">
											<img style="width:120px; margin:5px; height:150px;" src="../images/1.png">
											<img style="width:120px; margin:5px; height:150px;" src="../images/1.png">
										</div>
									</td>
								</tr>								
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="#" class="nbtnbig">취소</a></li>
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