<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[7]</title>
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
	<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터를 저장 -->
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String addr = request.getParameter("addr");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String hobbies = Arrays.toString(request.getParameterValues("hobby"));
		hobbies = hobbies.substring(1, hobbies.length() - 1);
	%>
	<h3>환영합니다. WELCOME!!</h3>
	<ul>
		<li id="name">이름 : <%=name%></li>
		<li>이메일 : <%=email%></li>
		<li>나이 : <%=age%>세(<%=(gender.equals("male") ? "남" : "여")%>)</li>
		<li>주소 : <%=addr%></li>
		<li>취미 : <%=hobbies%></li>
	</ul>

</body>
</html>