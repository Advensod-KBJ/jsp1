<%@page import="day5.dao.MybatisDao"%>
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
	if (addr.equals("기타"))	addr = request.getParameter("addr_etc");

	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String hobbies = Arrays.toString(request.getParameterValues("hobby"));
	hobbies = hobbies.substring(1, hobbies.length() - 1);

	Customer cus = new Customer(0, name, password, email, addr, gender, age, hobbies);
	MybatisDao dao = MybatisDao.getInstance();
	
	int idx = dao.insert(cus);
	cus.setIdx(idx);
	
	request.setAttribute("cus", cus);
	pageContext.forward("registration_view.jsp");

%>
