<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action='/helloweb/join' method="post">
		이메일 : <input type='text' name='email' value=''/><br /><br />
		비밀번호 : <input type='password' name='pw' value=''/><br /><br />
		
		생년:
		<select name = 'birthYear'>
			<option value='1992'> 1992년 </option>
			<option value='1993'> 1993년 </option>
			<option value='1994'> 1994년 </option>
			<option value='1995'> 1995년 </option>
			<option value='1996'>> 1996년 </option>
			<option value='1997'> 1997년 </option>
		</select>
		<br /><br />
		
		성별:
		여<input type='radio' name='gender' value='female' checked='checked'/>
		남<input type='radio' name='gender' value='male'/>
		<br /><br />
		
		취미:
		코딩 <input type='checkbox' name='hobby' value='coding' />
		등산 <input type='checkbox' name='hobby' value='hiking' />
		수영 <input type='checkbox' name='hobby' value='swimming' />
		낚시<input type='checkbox' name='hobby' value='fishing' />
		<br /><br />
		
		내소개
		<textarea name='desc'></textarea>
		
		<input type='submit' value='회원가입'/>
		
	</form>



</body>
</html>