<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글보기</title>

  <!-- Bootstrap 라이브러리 등록 - CDN방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>
<div class="container">
<h1>게시판 글보기</h1>
<table class="table">
<tr>
	<th>번호</th>
	<td>10</td>
</tr>
<tr>
	<th>제목</th>
	<td>웹표준이란???</td>
</tr>
<tr>
	<th>내용</th>
	<td><pre style="background: white;border: none; margin: 0; font-size: 11pt; padding: 0;"
	>웹을 사용하는 기술로 기술을 표준화 시킴
HTML, CSS, JS ...</pre></td>
</tr>
<tr>
	<th>작성자</th>
	<td>이영환</td>
</tr>
<tr>
	<th>작성일</th>
	<td>2021.01.27</td>
</tr>
<tr>
	<th>조회수</th>
	<td>20</td>
</tr>
<tr>
	<td colspan="2">
		<a href="updateForm.jsp?no=10" class="btn btn-default">수정</a>
		<a href="delete.jsp?no=10" class="btn btn-default">삭제</a>
		<a href="list.jsp" class="btn btn-default">리스트</a>
	</td>
</tr>
</table>
</div>
</body>
</html>