<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateBoardList</title>
</head>
<body>
	<h1>updateBoardList</h1>
	<form method="post" action="/updateBoardList">
		<table border="1">
			<tr>
				<th>board_id</th>
				<td><input type="hidden" name="boardId" value="${board.boardId}">${board.boardId}</td>
			</tr>
			<tr>
				<th>board_title</th>
				<td><input type="text" name="boardTitle" value="${board.boardTitle}"></td>
			</tr>
			<tr>
				<th>board_content</th>
				<td><textarea name="boardContent">${board.boardContent}</textarea></td>
			</tr>
			<tr>
				<th>board_writer</th>
				<td><input type="text" name="boardWriter" value="${board.boardWriter}"></td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>