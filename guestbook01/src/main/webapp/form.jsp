<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Guest List</title>
</head>
<body>
	<h1>게스트 리스트 가입</h1>
	<p>
		메일 리스트에 가입하려면,<br/>
		아래 항목을 기입하고 submit 버튼을 클릭하세요.
	</p>
	<form action="add.jsp" method="post">
	    name: <input type="text" name="name" value="" >
	    <br/><br/>
	    
	    password: <input type="text" name="password" value="">
	    <br/><br/>
	    
	    message : <input type="text" name="message" value="">
	    <br/><br/>
	    
	    <input type="submit" value="등록">
	</form>
	<br>
	<p>
		<td><a href="/guestbook01">메인으로 돌아가기</a></td>
	</p>
</body>
</html>