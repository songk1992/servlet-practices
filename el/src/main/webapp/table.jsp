<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int row = Integer.parseInt(request.getParameter("r"));
int col = Integer.parseInt(request.getParameter("c"));
%>

<!-- http://localhost:8089/jstlel/table.jsp?r=10&c=3  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table  border='1', cellspacing='0' cellpadding=3>

		<%
			for (int i = 0; i < row; i++) {
		%>

		<tr>

			<%
				for (int j = 0; j < row; j++) {
			%>
			<td>cell(<%=i %>, <%=j %>)</td>

			<%
				}
			%>
		</tr>

			<%
				}
			%>
		
	</table>

	<table>
		<tr>
			<td>cell(0,0)</td>
			<td>cell(0,1)</td>
		</tr>

		<tr>
			<td>cell(1,0)</td>
			<td>cell(1,1)</td>
		</tr>

		<tr>
			<td>cell(2,0)</td>
			<td>cell(2,1)</td>
		</tr>

		<tr>
			<td>cell(3,0)</td>
			<td>cell(3,1)</td>
		</tr>
	</table>


</body>
</html>