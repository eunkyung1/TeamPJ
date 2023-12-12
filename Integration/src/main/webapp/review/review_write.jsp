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
	});//취소
/* 수정 */	
	$(".sbtnMini").click(function(){
		alert("글쓰기를 진행합니다.");
		//var rate = $(":input:radio[name=rate]:checked").val();
		
		writeFrm.submit();
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
			
				<!-- 수정 -->
					<%
					HttpSession mysession = request.getSession();

					String memberId = "aaa";
					mysession.setAttribute("session_memberId", memberId);
					%>
					
					<form action="doN_write.do" name="writeFrm" method="post" enctype="multipart/form-data">
					<div id="mypage">
					<h2><strong>리뷰 작성</strong><span>우리 삼식세끼 가족들분들의 소중한 의견입니다.</span></h2>
					<div class="checkDivTab">
						<table class="checkTable" border="3" cellspacing="0">
							<colgroup>
							<col width="20%" />
							<col width="*" />
							</colgroup>
							<tbody>
							<script>
							$(function(){
								
								$("#btn_search").click(function(){
									var storename = $(".searchtxt").val();
									$.ajax({
										url:"../StoreSearch",
										type:"post",
										data:{"storename":storename},
										dataType:"json",
										success:function(data){
											htmlData = '';
											htmlData += data.storename +'||'+data.address;
											$("#storeList").html(htmlData);
											
										},
										error:function(){
											alert("실패");
										}//error
									})//ajax
									
								});//click
							
							});
							
							</script>
								<tr>
									<th scope="row"><span>가게검색</span></th>
									<td >
									<input type="text" name="storename" id="word "class="searchtxt" placeholder="검색하세요."  />
									<input type="button" class="st_search" name="searchFrm" value="가게검색" id="btn_search" />
									<ul id="storeList" style="height:100px">어디에 있을까요?????</ul>
									
									</td>
								</tr>
								
								<tr>
									<th scope="row"><span>제목</span></th>
									<td>
										<input type="text" class="wlong" name="title" placeholder="제목을 입력하세요." />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>평가</span></th>
									<td >
									<!-- 수정  -->
										<ul class="pta">
											<li>
												<input type="radio" name="rate" id="starFive" checked="checked" value="5.0"/>
												<label for="starFive" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="starFour" value="4.0" />
												<label for="starFour" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="starThree" value="3.0"/>
												<label for="starThree" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="startwo" value="2.0" />
												<label for="startwo" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>

											<li>
												<input type="radio" name="rate" id="starOne" value="1.0" />
												<label for="starOne" class="star">
													<img src="../images/star_yellow.png" alt="별점" />
												</label>
											</li>
										</ul>
									</td>
								</tr>

								<tr>
									<th scope="row" ><span>리뷰 내용</span></th>
									<td >
									<textarea class="tta" name="bcontent" cols="500" rows="10" placeholder="의견을 입력하세요..." style="overflow-y: scroll; overflow-x: hidden; height:250px;" required></textarea>
									</td>
								</tr>
								<tr class="ktag">
									<th scope="row" ><span>태그</span></th>
									<td>
									<input type="text" name="tags" class="ttxt"placeholder="태그는 ','로 구분하세요." >
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
			<!-- 수정 -->		
					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><button type="button" class="sbtnMini"><a>올리기</a></button></li>
								<li><button type="button" class="nbtnbig"><a>취소</a></button></li>
							</ul>
						</div>
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