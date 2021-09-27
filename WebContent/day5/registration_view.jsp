<%@page import="day5.dao.MybatisDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day5[] - DB 회원 등록</title>
<style>
ul {
	list-style: none;
	padding-inline-staet: 0px;
}

ul #name {
	padding: 5px 20px;
	margin: 5px 0px;
	background-color: tomato;
	color: white;
}

li {
	paddin: 5px 20px;
}
</style>
</head>
<body>

	<h3>환영합니다. WELCOME!!</h3>
	<ul>
		<li id="name">이름 : ${cus.name}</li>
		<li>이메일 : ${cus.email }</li>
		<li>나이 : ${cus.age} 세 (${cus.gender eq 'male' ? '남성' : '여성'})</li>
		<li>주소 : ${cus.addr}</li>
		<li>취미 : ${cus.hobby}</li>
	</ul>
	<a href="update.jsp?idx=${cus.idx}">정보 수정</a>
	<a href="mybatis_test.jsp">회원 조회</a>
	

</body>
</html>