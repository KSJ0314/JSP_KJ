<%@page import="common.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("UserId") == null){
		JSFunction.alertLocation("로그인 후 이용하세요", "../06session/LoginForm.jsp", out);
		return;
	}
%>