<%@page import="com.webjjang.board.service.BoardViewService"%>
<%@page import="com.webjjang.main.controller.ExeService"%>
<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 넘어오는 데이터(글번호) 받기
String strNo = request.getParameter("no");
long no = Long.parseLong(strNo);
// 여기는 자바 입니다. -> DB에서 데이터 가져오기
// 2개 이상의 데이터를 하나로 만들어서 넘기려고한다. 같은 타입 배열, 다른 타입이면 클래스 또는 Object 배열
// new long[]{글번호, 1증가여부-1:증가,0:증가안함}
BoardVO vo = (BoardVO) ExeService.execute(new BoardViewService(), new long[]{no, 0});
// 가져온 데이터를 서버객체(request)에 저장하기.
request.setAttribute("vo", vo);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글수정 폼</title>
</head>
<body>
<h1>게시판 글수정 폼</h1>
게시판 글수정 처리 HTML form action에 설정
<form action="update.jsp" method="post">
	<!-- 번호 -->
	<label>번호</label><br/>
	<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. 수정 불가 속성 : readonly -->
	<input name="no" readonly="readonly" value="${vo.no }"><br/>
	<!-- 제목 -->
	<label>제목</label><br/>
	<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
	<input name="title" value="${vo.title }"><br/>
	<!-- 내용 -->
	<label>내용</label><br/>
	<textarea rows="7" cols="60" name="content">${vo.content }</textarea><br/>
	<!-- 작성자 -->
	<label>작성자</label><br/>
	<!-- input tag의 기본 type을 text입니다. 그래서 생략 가능하다. -->
	<input name="writer" value="${vo.writer }"><br/>
	<!-- 데이터를 전송하는 type="submit" 버튼 - 버튼의 기본이므로 생략 가능한다. -->
	<button>수정</button>
	<!-- 데이터를 새로 입력하는 type = "reset" 버튼 -->
	<button type="reset">새로입력</button>
	<!-- 취소하려면 버튼모양으로 사용(type="button")하고 취소의 동작을 JS로 작성한다.
		history.back() : 이전 페이지로 이동 -->
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>