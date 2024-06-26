<%@page import="java.util.*"%>
<%@page import="common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>리스트 컬렉션 이용하기</h3>
	<%
		ArrayList<Person> pList = new ArrayList<>();
		pList.add(new Person("성삼문", 55));
		pList.add(new Person("박팽년", 60));
	%>
	<c:set var="personList" value="<%=pList %>" scope="request" />
	<ul>
		<li>이름 : ${personList[0].name }</li>
		<li>나이 : ${personList[1].age }</li>
		<c:forEach var="pL" items="<%=pList %>">
			<li>이름 : ${pL.name }</li>
			<li>나이 : ${pL.age }</li>
		</c:forEach>
	</ul>
	
	<h3>맵 컬렉션 이용하기</h3>
	<%
		Map<String, Person> pMap = new HashMap<>();
		pMap.put("personArgs1", new Person("하위지", 65));
		pMap.put("personArgs2", new Person("이개", 67));
	%>
	<c:set var="personMap" value="<%=pMap %>" scope="request" />
	<ul>
		<li>이름 : ${personMap.personArgs1.name }</li>
		<li>나이 : ${personMap.personArgs1.age }</li>
		<li>이름 : ${personMap.personArgs2.name }</li>
		<li>나이 : ${personMap.personArgs2.age }</li>
	</ul>
	
</body>
</html>