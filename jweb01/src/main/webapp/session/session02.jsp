<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //세션 정보 가져오기
	String id = (String)session.getAttribute("userID");

	out.println("설정된 세션의 속성값: " + id + "<br>");
%>