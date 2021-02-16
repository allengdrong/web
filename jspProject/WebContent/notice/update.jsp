<%@page import="com.webjjang.main.controller.ExeService"%>
<%@page import="com.webjjang.notice.service.NoticeUpdateService"%>
<%@page import="com.webjjang.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 순수한 자바 코드 부분입니다.---------------
System.out.println("--- update.jsp : 공지 수정 처리 ----");

// 한글 처리
request.setCharacterEncoding("utf-8");

// 넘어오는 데이터를 받습니다.
String strNo = request.getParameter("no");
long no = Long.parseLong(strNo);
String title = request.getParameter("title");
String content = request.getParameter("content");
String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");

// vo 객체 생성과 데이터 담기
NoticeVO vo = new NoticeVO();
vo.setNo(no);
vo.setTitle(title);
vo.setContent(content);
vo.setStartDate(startDate);
vo.setEndDate(endDate);

// 데이터 수정하는 service 호출 실행
//수정한 내용을 DB에 저장 -> NoticeUpdateService
int updateResult = (Integer) ExeService.execute(new NoticeUpdateService(), vo);

// 처리를 한 후에 자동 글보기 페이지 이동시킴.
// 글보기에서 데이터 - 글번호
response.sendRedirect("view.jsp?no=" + no);
%>
