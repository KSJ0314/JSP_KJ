<%@page import="java.util.*"%>
<%@page import="common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="scopeVar" value="page Value"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>출력하기</h3>
	<ul>
		<li>${scopeVar}</li>
	</ul>
	
	<c:remove var="scopeVar" />
	
	<h3>다시 출력하기</h3>
	<ul>
		<li>${scopeVar}</li>
	</ul>
</body>
</html>