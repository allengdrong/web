<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 순수한 자바 코드 부분입니다.---------------
System.out.println("--- write.jsp : 게시판 글쓰기 처리 ----");
// 처리를 한 후에 자동 리스트로 페이지 이동시킴.
response.sendRedirect("list.jsp");
%>
