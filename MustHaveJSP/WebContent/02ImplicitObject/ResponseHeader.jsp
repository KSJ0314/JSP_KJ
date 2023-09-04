<%@page import="java.util.Collection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		long add_date = s.parse(request.getParameter("add_date")).getTime();	//getTime : long 타입
		int add_int = Integer.parseInt(request.getParameter("add_int"));
		String add_str = request.getParameter("add_str");
		
		response.addDateHeader("myBirthday", add_date);
		response.addIntHeader("myNumber", add_int);
		response.addIntHeader("myNumber", 1004);
		response.addHeader("myName", add_str);
		response.setHeader("myName", "안중근");
	%>
	
	<h2>응답 헤더 정보 출력하기</h2>
	<%
		Collection<String> headerNames = response.getHeaderNames();
		for (String hName : headerNames) {
			String hValue = response.getHeader(hName);	// response.getHeader : value값 추출
	%>
			<li><%=hName %> : <%=hValue %> </li>
	<%
		}
	%>
	
	<h2> myNumber만 출럭하기</h2>
	<%
		Collection<String> myNumber = response.getHeaders("myNumber");
		for (String myNum : myNumber) {
	%>
			<li>myNumber : <%=myNum %></li>
	<%
		}
	%>
</body>
</html>