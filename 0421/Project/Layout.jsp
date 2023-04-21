<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="Layout.css" rel="stylesheet" type="text/css">
</head>
<body>
        <img src="sun.jpg" alt="image"style="width: 100px; height: 100px;">
        <span class="user-info">
            <span class="user-name"><%=session.getAttribute("name") %> 회원님, 환영합니다.</span><br>
            <button>개인정보 수정</button>
            <button onclick="location.href='../blueproject/Logout.do';">로그아웃</button>
        </span>
   <header class="logo">
            <!-- Insert your logo image here -->
            <a href="MainPage.jsp"></a>
    </header>
    <aside class="sidebar" style="display: inline-block; width: 200px;">
        <h2>카테고리</h2>
        <a href="MainPage.jsp" class="category-link <%= (request.getRequestURI().endsWith("MainPage.jsp")) ? "active" : "" %>">홈</a>
        <a href="Notice.jsp" class="category-link <%= (request.getRequestURI().endsWith("Notice.jsp")) ? "active" : "" %>">공지사항</a>
        <a href="Board.jsp" class="category-link <%= (request.getRequestURI().endsWith("Board.jsp")) ? "active" : "" %>">알림장</a>
        <a href="Album.jsp" class="category-link <%= (request.getRequestURI().endsWith("Album.jsp")) ? "active" : "" %>">앨범</a>
        <a href="Calendar.jsp" class="category-link <%= (request.getRequestURI().endsWith("Calendar.jsp")) ? "active" : "" %>">일정표</a>
        <a href="ClassInfo.jsp" class="category-link <%= (request.getRequestURI().endsWith("ClassInfo.jsp")) ? "active" : "" %>">반정보</a>
    </aside>
</body>
</html>