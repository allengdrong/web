<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 쓰기</title>

  <!-- BootStrap 라이브러리 등록 - CDN 방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript" src="util.js"></script>
<script type="text/javascript" src="formUtil.js"></script>

<script type="text/javascript">
	function dataCheck(){
		// alert("test");
		// 필수 항목 데이터 체크
		// alert(sel("title"));
		if(!require(sel("title"), "제목")) return false;
		if(!require(sel("content"), "내용")) return false;
		if(!require(sel("startDate"), "공지시작일")) return false;
		if(!require(sel("endDate"), "공지종료일")) return false;
		
		// 입력 데이터 최소 길이 확인
		// 제목
		if(!checkLength(sel("title"), "제목", 4)) return false;
		// 내용
		if(!checkLength(sel("content"), "내용", 4)) return false;
	}
</script>

</head>
<body>
	<div class="container">
		<h1>공지 쓰기</h1>
		<form action="write.jsp" method="post" onsubmit="return dataCheck();">
		<div class="form-group">
			<label for="title">제목</label>
			<input id="title" name="title" class="form-control">
		</div>
		<div class="form-group">
			<label for="content">내용</label>
			<textarea id="content" name="content" class="form-control" rows="5"></textarea>
		</div>
		<div class="form-group">
			<label for="startDate">공지시작일</label>
			<input id="startDate" name="startDate" class="form-control" type="date">
		</div>
		<div class="form-group">
			<label for="endDate">공지종료일</label>
			<input id="endDate" name="endDate" class="form-control" type="date">
		</div>

		<button>등록</button>
		<button type="reset">새로입력</button>		
		<button type="button" onclick="history.back();">취소</button>		
		</form>
	</div>
</body>
</html>