<%@page import="com.bitacademy.guestbook.vo.GuestbookVo"%>
<%@page import="com.bitacademy.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	new GuestbookDao().insert(vo);
	response.sendRedirect("/guestbook01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>등록 성공</h1>
</body>
</html>