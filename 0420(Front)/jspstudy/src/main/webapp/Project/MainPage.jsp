<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="Layout.jsp"></jsp:include>
   <style>
   .container {
         display: flex;
         flex-direction: row;
         align-items: center;
         justify-content: center;
         margin-left: 240px;
         margin-bottom: 20px;
      }
      .box {
         width: 50%;
         height: 200px;
         border: 1px solid black;
         border-radius:20px;
         padding-top: 50px;
         font-size: 20px;
         margin-right: 20px;

      }
      .box1{
         width: 50%;
         height: 500px;
         border: 1px solid;
         border-radius:20px;
         padding-top: 50px;
         font-size: 20px;
         margin-right: 20px;
      }
      .box h2 {
         vertical-align: top;
         margin-top: -40px
      }
      .box .more {
           float: right;
           font-size: 19px;
           margin-top: 14px;
           margin-right: 5px;
           text-decoration-line: none;
           color: black;
      }
      .box1 .more {
           float: right;
           font-size: 19px;
           margin-top: 14px;
           margin-right: 5px;
           text-decoration-line: none;
           color: black;
      }
      
      .box1 h2 {
         vertical-align: top;
         margin-top: -40px
      }
      .box p {
         padding: 10px;
         background-color: pink;   
      }
   </style>
</head>
<body>


</div>
   <div class="container">
      <div class="box">
         <h2>공지사항 <a href="Notice.jsp" class="more">more</a></h2>
                 <p>공지사항 내용</p>
      </div>
      <div class="box">
         <h2>알림장 <a href="Board.jsp" class="more">more</a></h2>
         <p>알림장 내용</p>
      </div>
   </div>
   <div class="container">
      <div class="box1">
        <h2>일정표 <a href="Calendar.jsp" class="more">more</a></h2>
         <p>
         <iframe 
            width="99%"
               height="470px"
            src="http://localhost:8081/jspstudy/fullcalendar/index_google.html">
         </iframe>
         </p>
      </div>
      <div class="box1">
         <h2>앨범 <a href="Album.jsp" class="more">more</a></h2>
         <p>앨범 내용</p>
      </div>
   </div>
   
   
</body>
</html>