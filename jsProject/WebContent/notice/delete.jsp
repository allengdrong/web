<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 System.out.println("delete.jsp");
 // DB에 공지 삭제 -> 차후에 처리
 // 자동으로 리스트로 이동시킨다.
 response.sendRedirect("list.jsp");
%>
