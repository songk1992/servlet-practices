<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  Heading -->
	<!-- 제목에 사용 하는 -->
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>


	<!-- 테이블 -->
	<!-- 기술을 섞으면 접근성이 떨어진다 -->
	<!--   
	<table border ='1' cellspacing='0' cellpadding='10'>
	-->
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
		</tr>
		<tr>
			<th>1</th>
			<th>호잇</th>
			<th>둘리</th>
		</tr>
		<tr>
			<th>2</th>
			<th>안녕하세요우~~~~~~</th>
			<th>마이콜</th>
		</tr>
	</table>

	<!-- 이미지 -->
	
	<!-- 절대경로 -->
	<img src ='/helloweb/images/cartoon-1299393.svg' style='width: 50px'/>
	<br />
	
	<!-- 상대경로 -->
	<img src ='images/cartoon-1299393.svg' style='width: 50px; border:1px solid #666'/>
	<br />
	
	<!-- anchor tag -->
	<a href='form.jsp'>폼으로 가기</a>
	<br />
	
	<!-- anchor tag -->
	<a href='index.jsp?no=2021'>메인으로 가기</a>
	<br />

	<!-- 문장 -->
	<p>
		웹 표준은 월드 와이드 웹의 측면을 서술하고 정의하는 공식 표준이나 다른 기술 규격을 가리키는 일반적인 용어이다. 	<br />
		최근에 이 용어는 웹 사이트를 작성하는 데 <strong>중요도 </strong>가 높아지고 있으며 웹 디자인, 개발과 관계가 있다.	<br />
		-wiki-	<br />
	</p>


</body>
</html>