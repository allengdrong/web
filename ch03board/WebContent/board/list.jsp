<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>

  <!-- BootStrap 라이브러리 등록 : CDN 방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
/* 선택자 - tr : tag, .tr : class, #tr : id */
.dataRow:hover{
	/* 배경색 회색으로 변경 */
	background: #eee;
	/* 마우스 커서를 손가락으로 변경 */
	cursor: pointer;
}
</style>

<script type="text/javascript">
/* 함수가 없으면 그냥 실행이 됨. <body>보다 먼저 실행되므로 객체 찾을 수 없다. - $() -> jQuery 함수 */
$(function(){
	$(".dataRow").click(function(){
		// location.href 에 url을 넣는다. -> 페이지 이동이 생긴다.
		location = "view.jsp?no=10";
	});
});
</script>

</head>
<body>
<div class="container">

<h1>게시판 리스트</h1>
<table class="table">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>
	<th>조회수</th>
</tr>
<!-- 여기가 데이터 부분의 줄입니다. 한 줄을 의미하는 태그 : tr -->
<tr class="dataRow">
	<td>10</td>
	<td>웹표준이란???</td>
	<td>이영환</td>
	<td>2021.01.27</td>
	<td>20</td>
</tr>
<tr class="dataRow">
	<td>9</td>
	<td>데이터 입출력 관련 글</td>
	<td>홍길동</td>
	<td>2021.01.26</td>
	<td>23</td>
</tr>
<tr>
	<td colspan="5">
		<a href="BS_writeForm.jsp" class="btn btn-default btn-sm">쓰기</a>
	</td>
</tr>
</table>
</div>
</body>
</html>