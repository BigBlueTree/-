<%@page import="utils.AlertFunc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<% if(session.getAttribute("id")==null) {  %>
	<% AlertFunc.alertLocation("로그인을 하셔야 합니다.", "../blueproject/LoginForm.jsp", out); %>
	<% } else { //로그인 된 상태 %>
<jsp:include page="Layout.jsp"></jsp:include>
<%@ include file="List2.jsp" %>
<% } %>
</body>
</html>