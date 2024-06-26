<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value='/welcome.jsp'/>">홈</a>
			<c:if test="${not empty UserId}" var="login">
				<a class="navbar-brand" href="<c:url value='/products.jsp'/>">상품정보</a>
				<a class="navbar-brand" href="<c:url value='/addProduct.jsp'/>">상품등록</a>
				<a class="navbar-brand" href="<c:url value='/list.board'/>">게시판</a>
			</c:if>
		</div>
		<div class="navbar-header justify-content-end">
			<c:if test="${login }">
				<a class="navbar-brand" href="<c:url value='/login.jsp'/>" style="color: green; font-size: 1em;"><%=(String) session.getAttribute("UserId")%>님</a>
			</c:if>
			<c:if test="${not login }">
				<a class="navbar-brand" href="<c:url value='/login.jsp'/>">로그인</a>
				<a class="navbar-brand" href="<c:url value='/addMember.jsp'/>">회원가입</a>
			</c:if>
			<c:if test="${login }">
				<a class="navbar-brand" href="<c:url value='/logout.jsp'/>">로그아웃</a>
				<a class="navbar-brand" href="<c:url value='/editMember.jsp'/>">회원정보수정</a>
				<a class="navbar-brand" href="<c:url value='/deleteMember.jsp'/>">회원탈퇴</a>
			</c:if>
		</div>
	</div>
</nav>