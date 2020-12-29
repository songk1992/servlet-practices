<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("newLine", "\n"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 값 받아보기 </h1>
	${iVal }<br>
	${lVal }<br>
	${fVal }<br>
	${bVal }<br>
	${fn:replace(sVal, newLine, "<br>") }<br>
	
	-${dVal }--<br>
	-${obj }--<br>
	-${vo.no }--<br>
	-${vo.name }--<br>
	
	<h1> 산술 연산 </h1>	
	${3*10+5 }--<br>
	${iVal+5 }--<br>
	
	<h1> 관계 연산 </h1>	
	${iVal == (5+5) }<br />
	${iVal < 6 }<br />
	${obj == null }<br />
	${vo != null }<br />
	${empty obj }<br />
	${not empty vo}<br />
	
	<h1> 논리 연산 </h1>	
	${iVal == (10) && lval < 1000}<br />
	${iVal <= 10 || lval - 10 == 0}<br />
	
	
	<h1> 요청 파라미터 값</h1>
	<!-- http://localhost:8089/jstlel/01?a=10&email=kcikscar 값을 받을시 --> 
	<!-- 자동 형변환 --> 
	-${param.a + 1 }-<br />
	-${param.email }--<br />
	
		
	<h1> Map 으로 값 받아보기 </h1>

	-${map.ival}-<br />
	-${map.lval}-<br />
	-${map.fval}-<br />
	-${map.bval}-<br />
	
	
	
</body>
</html>