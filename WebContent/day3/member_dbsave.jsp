<%@page import="day3.dao.CustomerDao"%>
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
<title>Day3[3] - DB 회원 등록</title>
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
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));	// Vo 객체에 저장할 떄 필요
		String addr = request.getParameter("addr");
		if(addr.equals("기타")) addr = request.getParameter("addr_etc");
		
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String hobbies = Arrays.toString(request.getParameterValues("hobby"));
		hobbies = hobbies.substring(1, hobbies.length() - 1);
		
		Customer cus = new Customer(0,name,password,email,addr,gender,age,hobbies);
		CustomerDao dao = CustomerDao.getInstance();
		dao.insert(cus);
		
	%>
	<h3>환영합니다. WELCOME!!</h3>
	<ul>
		<li id="name">이름 : <%=name%></li>
		<li>이메일 : <%=email%></li>
		<li>나이 : <%=age%>세(<%=(gender.equals("male") ? "남" : "여")%>)</li>
		<li>주소 : <%=addr%></li>
		<li>취미 : <%=hobbies%></li>
	</ul>
	<a href="member_list.jsp">회원 리스트</a>

</body>
</html>