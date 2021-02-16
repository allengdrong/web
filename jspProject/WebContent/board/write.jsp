<%@page import="com.webjjang.main.controller.ExeService"%>
<%@page import="com.webjjang.board.service.BoardWriteService"%>
<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 순수한 자바 코드 부분입니다.---------------
System.out.println("--- write.jsp : 게시판 글쓰기 처리 ----");
// 입력 받는 데이터의 한글처리
request.setCharacterEncoding("utf-8");

// 데이터를 받는다. -> 서버가 전달해 주는 request객체 안에 데이터가 들어가 있다.
// request객체.전달데이터가져오기(name명);
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");
// vo객체를 만들어서 넣는다.
BoardVO vo = new BoardVO();
vo.setTitle(title);
vo.setContent(content);
vo.setWriter(writer);

// DB에 데이터를 저장하는 처리를 한다.
int writeResult = (Integer) ExeService.execute(new BoardWriteService(), vo);

// 처리를 한 후에 자동 리스트로 페이지 이동시킴.
response.sendRedirect("list.jsp");
%>
