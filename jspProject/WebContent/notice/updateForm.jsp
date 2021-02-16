<%@page import="com.webjjang.notice.service.NoticeViewService"%>
<%@page import="com.webjjang.main.controller.ExeService"%>
<%@page import="com.webjjang.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 넘어오는 데이터(글번호) 받기
String strNo = request.getParameter("no");
long no = Long.parseLong(strNo);
// 여기는 자바 입니다. -> DB에서 데이터 가져오기
// 2개 이상의 데이터를 하나로 만들어서 넘기려고한다. 같은 타입 배열, 다른 타입이면 클래스 또는 Object 배열
NoticeVO vo = (NoticeVO) ExeService.execute(new NoticeViewService(), no);
// date type의 값을 셋팅할 때 HTML의 데이터 패턴이 yyyy-mm-dd 이여야 하므로 .을 -로 바꾸는 처리를 해야한다.
vo.setStartDate(vo.getStartDate().replace(".", "-"));
vo.setEndDate(vo.getEndDate().replace(".", "-"));
// 가져온 데이터를 서버객체(request)에 저장하기.
request.setAttribute("vo", vo);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글수정 폼</title>

  <!-- Bootstrap 라이브러리 등록 - CDN방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
	<h1>게시판 글수정 폼</h1>
	게시판 글수정 처리 HTML form action에 설정
	<form action="update.jsp" method="post">
		<!-- 번호 -->
		<div class="form-group">
			<label>번호</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. 수정 불가 속성 : readonly -->
			<input name="no" readonly="readonly" value="${vo.no }" class="form-control">
		</div>
		<!-- 제목 -->
		<div class="form-group">
			<label>제목</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
			<input name="title" value="${vo.title }" class="form-control">
		</div>
		<!-- 내용 -->
		<div class="form-group">
			<label>내용</label>
			<textarea rows="7" cols="60" name="content" class="form-control">${vo.content }</textarea>
		</div>
		<!-- 공지시작일 -->
		<div class="form-group">
			<label>공지시작일</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
			<input name="startDate" value="${vo.startDate }" type="date"  class="form-control">
			<!-- 데이터를 전송하는 type="submit" 버튼 - 버튼의 기본이므로 생략 가능한다. -->
		</div>
		<!-- 공지종료일 -->
		<div class="form-group">
			<label>공지종료일</label>
			<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
			<input name="endDate" value="${vo.endDate }" type="date"  class="form-control" >
		</div>
		<!-- 데이터를 전송하는 type="submit" 버튼 - 버튼의 기본이므로 생략 가능한다. -->
		<button>수정</button>
		<!-- 데이터를 새로 입력하는 type = "reset" 버튼 -->
		<button type="reset">새로입력</button>
		<!-- 취소하려면 버튼모양으로 사용(type="button")하고 취소의 동작을 JS로 작성한다.
			history.back() : 이전 페이지로 이동 -->
		<button type="button" onclick="history.back()">취소</button>
	</form>
</div>
</body>
</html>