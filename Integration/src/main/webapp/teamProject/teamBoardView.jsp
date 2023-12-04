<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title> 자유게시판 리스트 1개 가져오기 </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset3.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout3.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content3.css?v=Y" />
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>



</head>
<body>

<div style="width:100%">
<iframe src="../html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;"></iframe>
</div>

			<!-- contents -->
			<div id="contents">
				<div id="customer">
					<h2><strong>자유게시판</strong><span>삼식세끼 서비스에 궁금하신 사항을 남겨주시면 답변해드립니다.</span></h2>

					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>삼식세끼 ㅎㅎ</li>
								</ul>
							</div>
							<div class="day">
								<p class="txt">작성일<span>14.01.28</span></p>
							</div>
						</div>

						<div class="viewContents">
							너무 어려워서 눈이 빠지겠습니다..<br/>
							감사합니다.
							<br>
						</div>
					</div>


					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							<colgroup>
							<col width="100px" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th class="pre">PREV</th>
									<td><a href="#">상품 재입고는 언제 되나요?</a></td>
								</tr>

								<tr>
									<th class="next">NEXT</th>
									<td>다음 글이 없습니다.</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //이전다음글 -->


					<!-- Btn Area -->
					<div class="btnArea btline">
						<div class="bRight">
							<ul>
								<li><a href="#" class="sbtnMini mw">답글달기</a></li>
								<li><a href="teamBoardWrite.jsp" class="sbtnMini mw">수정</a></li>
								<li><a href="#" class="sbtnMini mw">삭제</a></li>
								<li><a href="teamBoard.jsp" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
			<!-- //contents -->

<div>
<iframe src="../html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
</body>
</html>