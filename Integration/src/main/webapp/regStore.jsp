<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">

<style>

*{margin: 0 auto;}
section {
    margin: auto;
    width:800px;
}
h1{
font-size: 32px;
margin: 0;
text-align: center;
color:orange;
}

select{
padding: 5px 0px 5px 10px;

}

input {
    height: 30px;
    font-size: 16px;
}

select, input, textarea {
    width: 100%;
    border: 2px solid #ccc;
}

th {
    font-weight: normal;
    font-size: 20px;
}
tr {
    height: 50px;
}
table {
    width: 100%;
}

.write {
    color: white;
    background: orange;
    border: none;
    margin-right: 15px;
    float:left;
}

button {
    width: 130px;
    height: 45px;
    font-size: 18px;
}
.cancel {
    color: black;
    background: white;
    border: 2px solid orange;
    float:left;
    margin-left:30px;
}

hr {
    border: 3px solid #ff7100;
    margin-bottom: 30px;
    margin-top:30px;
}
.button-wrapper {
    padding-top: 20px;
    width: 350px;
    margin: auto;
}

table>button{
width:220px;
height:36px;
float:right;

}
</style>
</head>
<body >
<script>
$(function(){
	
	$(".cancel").click(function(){
		
		history.back();
	})
})

</script>

<div style="width:100%">
<iframe target="_top" src="./html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;" ></iframe>
</div>


  <section>
    <h1>가게등록</h1>
    <hr>

    <form action="#" name="write" method="post">
      <table>
        <colgroup>
          <col width="15%">
          <col width="85%">
        </colgroup>
        <tr>
          <th>매장명</th>
          <td>
            <input type="text" name="title">
          </td>
        </tr>
         <tr>
          <th>전화번호</th>
          <td>
            <input type="text" name="phone">
          </td>
        </tr>
        <tr>
          <th>주소</th>
          <td>
            <input type="text" name="phone"> <button>주소검색</button>
          </td>
        </tr>
        <tr>
          <th>메뉴</th>
          <td>
            <input type="text" name="phone"><button>사진등록</button>
          </td>
        </tr>
        <tr>
          <th>영업시간</th>
          <td>
            <input type="text" name="phone">
          </td>
        </tr>
        <tr>
          <th>소개</th>
          <td>
            <input type="text" name="phone">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea name="content" cols="50" rows="10"></textarea>
          </td>
        </tr>
        <tr>
          <th>사진등록</th>
          <td>
            <input type="file" name="file" id="file">
          </td>
        </tr>
      </table>
      <hr>
      <div class="button-wrapper">
        <button type="submit" class="write">작성완료</button>
        <button type="button" class="cancel">취소</button>
      </div>
    </form>

  </section>
 <div>
<iframe src="./html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
</body>
</html>