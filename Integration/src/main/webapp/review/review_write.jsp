<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">

<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="../css/content_write.css?v=Y" />

<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">

$(function(){
	
	


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
<body data-aos-easing="ease" data-aso-duration="400" data-aos-delay="0" style="width:100%; margin-top:60px;">

  <!-- [E]glamping-N3 -->
  <script src="../resources/js/setting.js"></script>
  <script src="../resources/js/plugin.js"></script>
  <script src="../resources/js/template.js"></script>
  <script src="../resources/js/common.js"></script>
  <script src="../resources/js/script.js"></script>	
<div style="clear:both;"> </div>
<div id="allwrap">
<div id="wrap">


	<!-- container -->
	<div id="container">
			<!-- contents -->
			<div id="contents">
				<form action="#" name="Frm" method="post" enctype="multipart/form-data"></form>
				<div id="mypage">
					<h2><strong>리뷰 작성</strong><span>우리 삼식세끼 가족들분들의 소중한 의견입니다.</span></h2>
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
<!-- 마지막 -->

</body>
</html>