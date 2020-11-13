<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>
</head>
<body>
	<h1>boardList</h1>
	
	<table border="1">
		<thead>
			<tr>
				<th>board_id</th>
				<th>board_title</th>
				<th>board_content</th>
				<th>board_writter</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="b" items="${boardList}"> 
				<tr>
					<td><a href="/boardOneList/${b.boardId}">${b.boardId}</a></td>
					<td>${b.boardTitle}</td>
					<td>${b.boardContent}</td>
					<td>${b.boardWriter}</td>
					<td><a href="/updateBoardList/${b.boardId}">수정</a></td>
					<td><a href="/deleteBoardList/${b.boardId}">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/addBoardList">추가</a>
</body>
</html>