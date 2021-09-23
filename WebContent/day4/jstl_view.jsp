<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day4[2] JSTL 과 EL로 list 가져오기</title>
</head>
<body>
<%-- ${list} --%>
<h3> 고객 리스트 WELCOME!!!</h3>
<c:forEach var="cus" items="${list}" varStatus="status">
<ul><!-- for의 상태를 갖고 있는 status 변수에서 반복 인덱스 가져오기 : 몇번째 for인지 알수 있음 -->
	<li id="name">${status.index }:<a href="update.jsp?idx=${cus.idx}">${cus.name}</a> 님</li>
	<!-- cus는 Customer 타입 객체 idx,name,email...은 프로퍼티 getter 없으면 값을 가져오지 못하고 오류 -->
	<li id="email">${cus.email }</li>
	<li>${cus.age} 세 (${cus.gender})</li>
	<li>${cus.addr}</li>
	<li id="hobby">${cus.hobby}</li>
</ul>
</c:forEach>
</body>
</html>