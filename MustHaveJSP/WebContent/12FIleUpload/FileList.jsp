<%@page import="java.net.URLEncoder"%>
<%@page import="fileupload.MyfileDTO"%>
<%@page import="java.util.List"%>
<%@page import="fileupload.MyfileDAO"%>
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
	<h2>데이터베이스에 등록된 파일 목록 보기</h2>
	<a href="FileUploadMain.jsp">파일 등록하기</a>
	<%
		MyfileDAO dao = new MyfileDAO();
		List<MyfileDTO> fileList = dao.myFileList();
		dao.close();
	%>
	<table border="1">
		<tr>
			<th>순서</th>
			<th>작성자</th>
			<th>제목</th>
			<th>카테고리</th>
			<th>원본 파일명</th>
			<th>저장된 파일명</th>
			<th>작성일</th>
			<th>다운로드</th>
		</tr>
		<% for (MyfileDTO f : fileList) { %>
		<c:set var="f" value="<%=f %>" />
			<tr>
				<td><%=f.getIdx() %></td>
				<td><%=f.getName() %></td>
				<td><%=f.getTitle() %></td>
				<td><%=f.getCate() %></td>
				<td><%=f.getOfile() %></td>
				<td><%=f.getSfile() %></td>
				<td><%=f.getPostdate() %></td>
				<td><a href="Download.jsp?oName=<%=URLEncoder.encode(f.getOfile(),"utf-8")%>&sName=<%=URLEncoder.encode(f.getSfile(), "utf-8")%>">다운</a></td>
			</tr>
		<% } %>
	</table>
</body>
</html>