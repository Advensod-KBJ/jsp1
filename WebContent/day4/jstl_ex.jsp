<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day4[1] JSTL</title>
</head>
<body>
	<!-- jstl 태그를 사용하기 위해서 지시자로 설정이 필요 -->
	<!-- c로 시작하는 태그는 core 태그라고 부름 : 변수 사용, 흐름의 제어 -->
	<h3>자바 변수처럼 값을 저장 </h3>
	<c:set var="age" value="10"/><!-- 변수명 age, 값은 10 저장 -->
	age 출력 : ${age} 단순 EL 보다는 c:out 태그 사용 <c:out value="${age}"/>
	<h3>자바 if 역할</h3>
	<c:if test="${age<20 }"> <span style="color:green;">청소년 입니다</span></c:if>
	<h3>자바 if~else 역할</h3>
	<c:set var="age" value="30"/>
	<c:choose>
	<c:when test="${age<20}">	<!-- if -->
	<span style="color:green;">20세 미만 청소년 입니다.</span>
	</c:when>
	<c:otherwise> <!-- else -->
	<span style="color:blue;">20세 이상 성인입니다</span>
	</c:otherwise>
	</c:choose>
	<h3>자바 반복 for 역할</h3>
	<c:forEach var="i" begin="1" end="${param.cnt}"><!-- parameter를 가져옴 이름은 cnt -->
	<c:out value="${i}"/><br>
	</c:forEach>
	<a href="jstl_ex.jsp?cnt=20">param.cnt 테스트</a>
	<h3>forTocken 태그</h3>
	<c:forTokens items="sana,nana,나연,다현" delims="," var="user">
	<c:out value="${user}"/><br>
	</c:forTokens>
	</body>
</html>