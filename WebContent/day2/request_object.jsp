<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[3]</title>
</head>
<body>
	<!-- JSP 내장(implicit) 객체 : 선언하지 않고 사용 
		 1) out (JspWriter 클래스 타입) 
		 2) request (HttpServletRequest클래스 타입)
		 : 사용자가 요청을 보내는 객체 
		 : 메소드값으로 알아낼 수 있는 정보들을 확인
	-->
	<h3>Request 객체의 정보</h3>
	<hr>
	<!-- 요청 URL : http://localhost:8082/jsp1/day2/request_object.jsp -->
	<ul>
		<li>요청 URL : <%=request.getRequestURL()%></li>
		<!-- U 통합 R 자원 L 위치(즈소) -->
		<li>요청 URI : <%=request.getRequestURI()%></li>
		<!-- U 통합 R 자원 I 식별자 -->
		<li>컨텍스트(context) : <%=request.getContextPath()%></li>
		<li>서버 IP : <%=request.getLocalAddr()%>,<%=request.getLocalName()%></li>
		<li>서버 Port : <%=request.getLocalPort()%></li>
		<li>클라이언트 IP : <%=request.getRemoteAddr()%></li>
		<!--  IPv6 (64바이트, 8자리) -->
		<%	// request 객체로 전달되는 인코딩 형식 설정
			request.setCharacterEncoding("UTF-8"); %>
		<li>문자 인코딩 형식 : <%=request.getCharacterEncoding()%></li>
		<li></li>
	</ul>
	<!-- 출력 IPv4 설정 : Run -> Run Configuration -> tomcat -> Arguments -> VM Arg 에 입력 -Djava.net.preferIPv4Stack=ture -->
</body>
</html>