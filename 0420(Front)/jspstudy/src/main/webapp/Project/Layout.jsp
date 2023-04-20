<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="Layout.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- 메인 컨텐츠 -->
<div class="logo">
    <!-- Insert your logo image here -->
    <a href="MainPage.jsp">
  		<img src="sun.jpg" alt="Site Logo"style="width: 200px; height: 150px;">
	</a>
    
    <!-- 사이드바 -->
	<div class="sidebar">
		<h2>카테고리</h2>
		<a href="MainPage.jsp" class="category-link <%= (request.getRequestURI().endsWith("MainPage.jsp")) ? "active" : "" %>">홈</a>
		<a href="Notice.jsp" class="category-link <%= (request.getRequestURI().endsWith("Notice.jsp")) ? "active" : "" %>">공지사항</a>
		<a href="Board.jsp" class="category-link <%= (request.getRequestURI().endsWith("Board.jsp")) ? "active" : "" %>">알림장</a>
		<a href="Album.jsp" class="category-link <%= (request.getRequestURI().endsWith("Album.jsp")) ? "active" : "" %>">앨범</a>
		<a href="Calendar.jsp" class="category-link <%= (request.getRequestURI().endsWith("Calendar.jsp")) ? "active" : "" %>">일정표</a>
		<a href="ClassInfo.jsp" class="category-link <%= (request.getRequestURI().endsWith("ClassInfo.jsp")) ? "active" : "" %>">반정보</a>
	</div>
</body>
</html>