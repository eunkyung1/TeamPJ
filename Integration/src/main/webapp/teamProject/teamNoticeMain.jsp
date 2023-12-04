<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>


<head>

<title> 공지사항 </title>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="../css/rese3t.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content3.css?v=Y" />
  <link rel="stylesheet" href="../resources/css/template.css">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" media="screen" href="../resources/css/style3.css">
  <link rel="stylesheet" href="../resources/css/login3.css">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function(){
	$(".web").click(function(){
		if($(".searchInput").val()==""){
			alert("내용을 입력하세요.");
			$("#searchInput").focus();
			return false;
		}
		
		insertFrm.submit();
	}); 
 });

</script>
</head>

<body style="width:100%;">

<div style="width:100%;">
<iframe src="../html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;"></iframe>

</div>
<section>
			<!-- contents -->
			<div id="contents">
				<div id="customer">
					<h2><strong>공지사항</strong><span>삼식세끼 소식을 전해드립니다.</span></h2>
					
					<div class="orderDivMt">
						<table summary="NO, 제목, 등록일, 조회수 순으로 공지사항을 조회 하실수 있습니다." class="orderTable2" border="1" cellspacing="0">
							<colgroup>
							<col width="9%" class="tnone" />
							<col width="9%" />
							<col width="*" class="tw25" />
							<col width="14%" class="tnone" />
							<col width="14%"  />
							</colgroup>
							<thead>
								<th scope="col" class="tnone">NO.</th>
								<th scope="col">조회수</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col" class="tnone">작성일</th>
							</thead>
							<tbody>
								<tr>
									<td class="tnone">1</td>
									<td class="tnone">100</td>
										<td><a href="teamNoticeView.jsp">삼식세끼 리뉴얼 오픈합니다.</a></td>
									<td>관리자</td>
									<td >2023-11-29</td>
								</tr>
								<tr>
									<td class="tnone">1</td>
									<td class="tnone">100</td>
										<td><a href="teamNoticeView.jsp">삼식세끼 리뉴얼 오픈합니다.</a></td>
									<td>관리자</td>
									<td >2023-11-29</td>
								</tr>
								<tr>
									<td class="tnone">1</td>
									<td class="tnone">100</td>
										<td><a href="teamNoticeView.jsp">삼식세끼 리뉴얼 오픈합니다.</a></td>
									<td>관리자</td>
									<td >2023-11-29</td>
								</tr>
								<tr>
									<td class="tnone">1</td>
									<td class="tnone">100</td>
										<td><a href="teamNoticeView.jsp">삼식세끼 리뉴얼 오픈합니다.</a></td>
									<td>관리자</td>
									<td >2023-11-29</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btnAreaList">
							<div class="btnAreaList">
						<div class="bwright">
							<ul>
								<li><a href="teamNoticeWrite.jsp" class="writeBtn">글쓰기</a></li>
							</ul>
						</div>

						<!-- 페이징이동1 -->
						<div class="allPageMoving1">

						<a href="#" class="n"><img src="../images/btn/btn_pre2.gif" alt="처음으로"/></a><a href="#" class="pre"><img src="../images/btn/btn_pre1.gif" alt="앞페이지로"/></a>
						<strong>1</strong>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
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
										<option value="" />제목</option>
										<option value="" />내용</option>
									</select>
								</li>
								<li><input type="text" class="searchInput" /></li>
								<li class="web"><a href="#"><img src="../images/btn/btn_search.gif" alt="검색" /></a></li>
								<li class="mobile"><a href="#"><img src="../images/btn/btn_search_m.gif" alt="검색" /></a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<!-- //contents -->

</div>
</section>
<div>
<iframe src="../html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
</body>
</html>