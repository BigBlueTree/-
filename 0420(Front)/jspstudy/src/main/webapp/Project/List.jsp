<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 공지사항 -->
<%@ include file="Layout.jsp"%>
<meta charset="UTF-8">
<title>자료 게시판</title>
<style>a{text-decoration: none}</style>

</head>
<body>
   <h2>공지 사항</h2>
   <div style="width: 90%; margin: 0 auto; position: absolute; top: 33%; left: 60%; transform: translate(-50%, -50%);">
   <!-- 검색 -->
   <form method="get">
      <table  border="1" width="90%">
         <tr>
            <td align="center">
               <select name="searchType">
                  <option value="title" 
                     <c:if test="${map.searchType=='title'}">selected</c:if>>제목
                  </option>
                  <option value="content"
                      <c:if test="${map.searchType=='content'}">selected</c:if>>내용
                   </option>
               </select>
               <input type="search" name="searchStr" value="${map.searchStr}"/>
               <input type="submit" value="검색"/>
            </td>
         </tr>      
      </table>   
   </form>
   <!-- 목록 -->
   <table border="1" width="90%">
      <tr>
         <th>작성 날짜</th>
         <th>글 번호</th>
         <th>글 제목</th>
         <th>작성자</th>
         <th>조회수</th>
      </tr>      
<c:choose>
   <c:when test="${empty boardList }">
      <tr>
         <td colspan="6" align="center">등록된 게시물이 없습니다.</td>
      </tr>
   </c:when>
   <c:otherwise>
      <c:forEach items="${boardList}" var="list" varStatus="stat">
         <tr align="center">
         	<td>${list.write_date}</td>
            <td>${map.totalCount-((map.pageNum-1)*map.pageSize)-stat.index}</td>
            <td align="center">
               <a href="../m2board/view.do?boardnum=${list.boardnum}">${list.title} </a> 
            </td>
            <td>${list.writerid}</td>
            <td>${list.count}</td>
         </tr>
      </c:forEach>
   </c:otherwise>
</c:choose>
   </table>
   <!--  하단 메뉴(페이징 글쓰기) -->
   <table border="1" width="90%">
      <tr align="center">
         <td>
         </td>
         <td width="100">
            <button type="button" onclick="location.href='../../m2board/write.do';">
               글쓰기
            </button>
         </td>
      </tr>
   </table>
   </div>
</body>
</html>