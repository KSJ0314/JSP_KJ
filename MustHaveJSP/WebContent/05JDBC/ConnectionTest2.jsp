<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JDBC 테스트</h2>
	<%
		JDBConnect jdbc1 = new JDBConnect();
			jdbc1.close();
	%>
		<h2>JDBC 테스트 2</h2>
	<%
		String driver = application.getInitParameter("MysqlDriver");
			String url = application.getInitParameter("MysqlURL");
			String id = application.getInitParameter("MysqlId");
			String pwd = application.getInitParameter("MysqlPwd");
			JDBConnect jdbc2 = new JDBConnect(driver,url,id,pwd);
			jdbc2.close();
	%>
</body>
</html>