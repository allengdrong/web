<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 등록 폼</title>

  <!-- Bootstrap 라이브러리 등록 - CDN방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
<div class="container">

	<h1>공지 등록 폼</h1>
	<p>
		공지 등록 처리 - HTML form 태그안에 action 속성을 설정<br/>
		Bootstrap 적용하는 폼 : container(전체) - form tag - form-group(하나의 입력 셋트) - form-control(입력란)
	</p>
	<form action="write.jsp" method="post">
		<div class="form-group">
			<!-- 제목 -->
			<label for="title">제목</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
			<input name="title" class="form-control" id="title" required="required"
			 placeholder="제목 입력 - 3글자 이상 100자 이내">
		</div>
		
		<div class="form-group">
			<!-- 내용 -->
			<label for="content">내용</label>
			<textarea rows="7" name="content" class="form-control" id="content"
			 required="required"></textarea>
		</div>
		
		<div class="form-group">
			<!-- 공지시작일 -->
			<label for="startDate" >공지시작일</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. 
			     type을 날짜입력 date로 지정한다. 그런데 HTML 5의 타입이 지원이 되지 않으면 text로 진행이된다. -->
			<input name="startDate" class="form-control" id="startDate" required="required" type="date">
		</div>
		
		<div class="form-group">
			<!-- 작성자 -->
			<label for="endDate" >공지종료일</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. 
			     type을 날짜입력 date로 지정한다. 그런데 HTML 5의 타입이 지원이 되지 않으면 text로 진행이된다. -->
			<input name="endDate" class="form-control" id="endDate" required="required" type="date">
		</div>
		
		<!-- 데이터를 전송하는 type="submit" 버튼 - 버튼의 기본이므로 생략 가능한다. -->
		<button class="btn btn-default">등록</button>
		<!-- 데이터를 새로 입력하는 type = "reset" 버튼 -->
		<button type="reset" class="btn btn-default">새로입력</button>
		<!-- 취소하려면 버튼모양으로 사용(type="button")하고 취소의 동작을 JS로 작성한다.
			history.back() : 이전 페이지로 이동 -->
		<button type="button" onclick="history.back()" class="btn btn-default">취소</button>
	</form>
	
</div>
</body>
</html>