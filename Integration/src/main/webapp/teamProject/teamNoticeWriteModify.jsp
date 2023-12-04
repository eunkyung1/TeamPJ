<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title> 공지사항 쓴 글 수정하기</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset3.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content3.css?v=Y" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<script>
     $(function(){
    	$("#checkBtn").click(function(){
    		//alert("글쓰기를 진행합니다.");
    		if($("#title").val()==""){
    			alert("제목을 입력하세요.");
    			$("#title").focus();
    			return false;
    		}
    		location.href="teamNoticeView.jsp";
    		
    	}); 
     });
     </script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>공지사항</strong><span>삼식세끼 소식을 전해드립니다.</span></h2>
					
					<div class="productTab normaltab">
						<ul>
							<li class="last"><a href="#" class="on">공지사항</a></li>
						</ul>						
					</div>

					<div class="checkDivTab">
						<table summary="분류, 구매여부, 평가, 제목, 상세 내용 순으로 상품평을 작성 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>게시글 작성</caption>
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
							
								<tr>
									<th scope="row"><span>노출</span></th>
									<td>
										<select>
											<option value="">전체공개</option>
											<option value="">부분공개</option>
										</select>
										
										
									</td>
								</tr>
								<tr>
									<th scope="row" class="wlong"><span>제목</span></th>
									<td>
										<input type="text" class="wlong" id="title" />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>사진첨부</span></th>
									<td>
										<select>
											<option value="">등록</option>
											<option value="">미등록</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row"><span>상세 내용</span></th>
									<td>
										<textarea class="tta"></textarea>
									</td>
								</tr>								
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="#" class="sbtnMini" id="checkBtn">수정</a></li>
								<li><a href="teamNoticeMain.jsp" class="nbtnbig" id="cancle">취소</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
			<!-- //contents -->


</div>
</div>
</body>
</html>