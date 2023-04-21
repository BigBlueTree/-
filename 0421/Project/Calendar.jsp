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
<link href="Calendar.css" rel="stylesheet" type="text/css">
</div>
<div class="container">
	<div>
			<iframe 
            	frameborder= 0
				src="http://localhost:8081/midproject/fullcalendar/index_google.html">
			</iframe>
	</div>
</div>
<div class="button-container">
  <button onclick="window.open('https://calendar.google.com/calendar/u/0/r')">수정</button>

</div>
<% } %>
</body>
</html>