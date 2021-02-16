<%@page import="com.webjjang.board.service.BoardDeleteService"%>
<%@page import="com.webjjang.main.controller.ExeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 순수한 자바 코드 부분입니다.---------------
System.out.println("--- delete.jsp : 게시판 글삭제 처리 ----");

// 넘어오는 데이터 받기 - 번호
String strNo = request.getParameter("no");
long no = Long.parseLong(strNo);

// BoardDeleteService - BoardDAO : DB 처리함.
int deleteResult = (Integer) ExeService.execute(new BoardDeleteService(), no);

// 처리를 한 후에 자동 리스트로 페이지 이동시킴.
response.sendRedirect("list.jsp");
%>
