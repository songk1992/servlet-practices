<%@page import="com.bitacademy.guestbook.vo.GuestbookVo"%>
<%@page import="com.bitacademy.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	
	GuestbookVo vo = new GuestbookVo();
	Long k = Long.valueOf(no);
	vo.setNo(k);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게스트 북</title>
</head>
<body>
	<form method = "post" action="delete2.jsp?no=<%=vo.getNo()%>">
		<input type='hidden' name='no' value='10'>
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
				<td><input type="submit" value="확인"></td>
				<td><a href="/guestbook01">메인으로 돌아가기</a></a></td>
			</tr>
		</table>
	</form>
</body>
</html>