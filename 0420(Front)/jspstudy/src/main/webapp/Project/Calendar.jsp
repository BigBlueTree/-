<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="Layout.jsp"></jsp:include>
<link href="Calendar.css" rel="stylesheet" type="text/css">
</head>
<body>
</div>
<div class="container">
	<div>
			<iframe 
            	frameborder= 0
				src="http://localhost:8081/jspstudy/fullcalendar/index_google.html">
			</iframe>
	</div>
</div>
<div class="button-container">
  <button onclick="window.open('https://calendar.google.com/calendar/u/0/r')">수정</button>

</div>
</body>
</html>