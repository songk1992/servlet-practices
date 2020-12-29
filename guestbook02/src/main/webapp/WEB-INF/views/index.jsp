<%@page import="java.util.List"%>
<%@page import="com.bitacademy.guestbook.vo.GuestbookVo"%>
<%@page import="com.bitacademy.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	List<GuestbookVo> list = (List<GuestbookVo>) request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/kimsong.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>

	<br />

	<!-- 등록 구간 -->

	<form action="<%=request.getContextPath()%>/gb" method="post">
		<input type='hidden' name='a' value='add' />
		<table border="1" cellpadding="1 cellspacing="2">

			<tr>
				<td align=right>이름:</td>
				<td align=right><input type="text" name="name" value=""></td>
				<td align=right>비밀번호:</td>
				<td align=right><input type="text" name="password" value=""></td>
			<tr>
				<td colspan="4" height="110"><textarea name="message" value="">
				</textarea></td>
			</tr>

			<tr>
				<td align=right><input type="submit" value="등록"></td>
			</tr>

		</table>
	</form>

	<br />
	<br />

	<!-- 보여주기 + 삭제 구간 -->

	<%
		int indexNumber = 1;
	
		for (GuestbookVo vo : list) {
	%>

	<table border="1" cellpadding="1" cellspacing="2">
		<tr>
			<td align=center width="110"><%=indexNumber++%>   </td>
			<td align=right width="100"><%=vo.getName()%></td>
			<td align=right width="230"><%=vo.getDatetime()%></td>

			<td>				
				<form action="<%=request.getContextPath()%>/gb" method="post">
					<input type='hidden' name='a' value='deleteform' />
					<input type='hidden' name='no' value=<%=vo.getNo()%> />
					<input type="submit" value="삭제">
				</form>
			</td>	
		</tr>
		<tr>
			<td align=right width="110"><%=vo.getMessage()%></td>
		</tr>
	</table>
	<br />
	<br />
	<%
		}
	%>

	<p>
		<a href='form.jsp'>추가메일 등록</a>
	</p>
	<br>


</body>
</html>