<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 보기</title>

  <!-- BootStrap 라이브러리 등록 - CDN 방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<h1>공지 보기</h1>
<!-- 		번호, 제목, 내용, 공지시작일, 공지종료일, 공지등록일, 공지최종수정일 -->
		<table class="table">
			<tr>
				<th>번호</th>
				<td>10</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>UI 구현</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><pre style="border: none; font-size: 12pt; background: white; padding: 0px;">화면에 보여 줄 내용을 정해서 표시하는 것</pre></td>
			</tr>
			<tr>
				<th>공지시작일</th>
				<td>2021-02-01</td>
			</tr>
			<tr>
				<th>공지종료일</th>
				<td>2021-03-01</td>
			</tr>
			<tr>
				<th>공지등록일</th>
				<td>2021-02-01</td>
			</tr>
			<tr>
				<th>공지최종수정일</th>
				<td>2021-02-01</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="updateForm.jsp?no=10" class="btn btn-default">수정</a>
					<a href="delete.jsp?no=10" class="btn btn-default"
					 onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
					<a href="list.jsp" class="btn btn-default">리스트</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>