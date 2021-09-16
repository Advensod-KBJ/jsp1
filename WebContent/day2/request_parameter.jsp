<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[4]</title>
</head>
<body>
	<!-- request parameter : request 객체에 저장되어 서버에게 전달되는 데이터
		 1) URL 뒤에 ? 에 쿼리 문자열로 전달하는 방법
		 2) method 를 post로 하여 전달하는 방법 -->
	<!-- 요청 URL http://localhost:8082/jsp1/day2/request_parameter.jsp?name=%ED%99%8D%EA%B8%B8%EB%8F%99&age=34
									ㄴ **Request Method : GET -->
	<h3>Request Parameter 연습</h3>
	<hr>
	<%
		// request의 파라미터 가져오기, 파라미터가 10개 라면... getParameter()메소드 10번
		// DTO(VO) 타입 클래스를 이용해서 파라미터와 객체를 자동으로 매핑(프레임워크)
		String name = request.getParameter("name"); //"name"은 ? 뒤에 파라미터 이름
		String age = request.getParameter("age"); // 파라미터 안받았다고 오류가 발생하지 않음
		String location = request.getParameter("location");
	%>
	<ul>
		<li>이름 : <%=name%></li>
		<li>나이 : <%=age%></li>
		<!-- 파라미터에 location도 전달 -->
		<li>지역 : <%=location%></li>
	</ul>
	<!-- 파라미터 값으로 MyUser 객체를 생성 -->
	<%
		if(age==null) age = "999";
		MyUser my2 = new MyUser(name, Integer.parseInt(age), location);
		// Integer.parseInt(age) -> null 이면 오류
		out.print(my2);
	%>

	<ul>
		<li>이름 : <%=my2.getName()%></li>
		<li>나이 : <%=my2.getAge()%></li>
		<!-- 파라미터에 location도 전달 -->
		<li>지역 : <%=my2.getLocation()%></li>
	</ul>
</body>
</html>