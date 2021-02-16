<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 등록 폼</title>
</head>
<body>
<h1>공지 등록 폼</h1>
공지 등록 처리 HTML form action에 설정
<!-- 데이터를 여러개 넘기는 경우 body에 데이터를 포함시켜 넘길수 있도록 method = "post"로 지정한다. -->
<form action="write.jsp" method="post">
	<!-- 제목 -->
	<label>제목</label><br/>
	<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
	<input name="title"><br/>
	<!-- 내용 -->
	<label>내용</label><br/>
	<textarea rows="7" cols="60" name="content"></textarea><br/>
	<!-- 공지 시작일 -->
	<label>공지 시작일</label><br/>
	<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
	<input name="startDate" type="date" ><br/>
	<label>공지 종료일</label><br/>
	<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
	<input name="endDate"><br/>
	<!-- 데이터를 전송하는 type="submit" 버튼 - 버튼의 기본이므로 생략 가능한다. -->
	<button>등록</button>
	<!-- 데이터를 새로 입력하는 type = "reset" 버튼 -->
	<button type="reset">새로입력</button>
	<!-- 취소하려면 버튼모양으로 사용(type="button")하고 취소의 동작을 JS로 작성한다.
		history.back() : 이전 페이지로 이동 -->
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>