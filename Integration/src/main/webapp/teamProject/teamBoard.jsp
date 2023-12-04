<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title> 자유게시판 리스트 </title>
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
	$(".web1").click(function(){
		if($(".searchInput").val()==""){
			alert("내용을 입력하세요.");
			$("#searchInput").focus();
			return false;
		}
		
	}); 
 });

</script>


<div style="width:100%">
<iframe src="../html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;" target="_top"></iframe>
</div>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>유저게시판</strong><span></span></h2>
					<div class="orderDivNm">
						<table  class="orderTable2" border="1" cellspacing="0">
							<colgroup>
							<col width="9%" class="tnone" />
							<col width="9%" class="tw20" />
							<col width="*" />
							<col width="15%" class="tnone" />
							<col width="15%" class="tw30" />
							</colgroup>
							<thead>
								<th scope="col" class="tnone">NO</th>
								<th scope="col">조회수</th>
								<th scope="col">제목</th>
								<th scope="col" class="tnone">작성자</th>
								<th scope="col">작성일</th>
							</thead>
							<tbody>
							<!--  반복 시작  -->

								<tr>
									<td class="num">1</td>
									<td class="hit"><a href="#">1</a></td>
									<td class="title"><a href="./teamBoardView.jsp">title</a></td>
									 <td class="writer">id</td>
									<td>2023-11-11</td>
								</tr>
								<tr>
									<td class="num">1</td>
									<td class="hit"><a href="#">1</a></td>
									<td class="title"><a href="./teamBoardView.jsp">title</a></td>
									 <td class="writer">id</td>
									<td>2023-11-11</td>
								</tr>
								<tr>
									<td class="num">1</td>
									<td class="hit"><a href="#">1</a></td>
									<td class="title"><a href="./teamBoardView.jsp">title</a></td>
									 <td class="writer">id</td>
									<td>2023-11-11</td>
								</tr>

								<!--  반복 끝  -->

							</tbody>
						</table>
					</div>

					<div class="btnAreaList">
						<div class="bwright">
							<ul>
								<li><a href="teamBoardWrite.jsp" class="writeBtn">글쓰기</a></li>
							</ul>
						</div>

						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

						<a href="#" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a><a href="#" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						<strong>1</strong>
						<strong>1</strong>
						<strong>1</strong>
						<strong>1</strong>
						<strong>1</strong>
						<a href="#" class="next"><img src="../images/btn/btn_next1.gif" alt="뒤 페이지로"/></a><a href="#" class="n"><img src="../images/btn/btn_next2.gif" alt="마지막페이지로"/></a>

						</div>
						<!-- //페이징이동1 -->
					</div>

					<div class="searchWrap">
						<div class="search">
							<ul>
								<li class="web"><img src="../images/txt/txt_search.gif" alt="search" /></li>
								<li class="se">
									<select>
										<option value="" />${bdto.title }</option>
										<option value="" />${bdto.content }</option>
									</select>
								</li>
								<li><input type="text" class="searchInput" /></li>
								<li class="web1"><a href="#"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								<li class="mobile"><a href="#"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<!-- //contents -->



<div>
<iframe src="../html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
</body>
</html>