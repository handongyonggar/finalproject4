<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
    <style>
        /* 여기에 스타일 코드 추가 */
    </style>
</head>
<body>
<%
    // 게시물 ID 가져오기
    String id = request.getParameter("id");
    BoardDAO dao = new BoardDAO();
    BoardVO vo = dao.getBoard(Integer.parseInt(id));

    // 세부 정보 출력
    if(vo != null) {
%>
<h1>게시물 상세 정보</h1>
<table>
    <tr><td>ID:</td><td><%= vo.getSeq() %></td></tr>
    <tr><td>Category:</td><td><%= vo.getCategory() %></td></tr>
    <tr><td>Title:</td><td><%= vo.getTitle() %></td></tr>
    <tr><td>Writer:</td><td><%= vo.getWriter() %></td></tr>
    <tr><td>Content:</td><td><%= vo.getContent() %></td></tr>

</table>
<br>
<a href="posts.jsp">목록으로 돌아가기</a>
<%
    } else {
        out.println("<p>게시물을 찾을 수 없습니다.</p>");
    }
%>
</body>
</html>
