<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 리스트</title>

  <!-- BootStrap 라이브러리 등록 - CDN 방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
	.dataRow:hover{
		background: #eee;
		cursor: pointer;
	}
</style>

<script type="text/javascript">
	function go(no){
		location = "view.jsp?no=" + no;
	}
</script>

</head>
<body>
	<div class="container">
		<h1>공지 리스트</h1>
		<table class="table">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>공지시작일</th>
				<th>공지종료일</th>
				<th>공지최종수정일</th>
			</tr>
			<tr class="dataRow" onclick="go(10)">
				<td>10</td>
				<td>UI 구현</td>
				<td>2021-02-01</td>
				<td>2021-03-01</td>
				<td>2021-02-01</td>
			</tr>
			<tr class="dataRow" onclick="location='view.jsp?no=9'">
				<td>9</td>
				<td>설명절 수업</td>
				<td>2021-02-02</td>
				<td>2021-02-15</td>
				<td>2021-02-02</td>
			</tr>
			<tr>
				<td colspan="5">
					<a href="writeForm.jsp" class="btn btn-default">글쓰기</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>