<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age")); // Vo 객체에 저장할 떄 필요
	String addr = request.getParameter("addr");
	if (addr.equals("기타"))
		addr = request.getParameter("addr_etc");

	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String hobbies = Arrays.toString(request.getParameterValues("hobby"));
	hobbies = hobbies.substring(1, hobbies.length() - 1);

	Customer cus = new Customer(0, name, password, email, addr, gender, age, hobbies);
	CustomerDao dao = CustomerDao.getInstance();
	dao.insert(cus);
	
	// 1) 추가된 회원정보만 확인하기
	request.setAttribute("cus", cus);
	pageContext.forward("registration_view.jsp");

	// 2) 사용자가 요청하지 않았지만 회원리스트 list.jps로 요청 바꾸기 registration.jsp -> list.jsp
	//response.sendRedirect("list.jsp");
%>
