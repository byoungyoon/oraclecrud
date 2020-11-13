<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardOneList</title>
</head>
<body>
	<h1>boardOneList</h1>
	
	<table border="1">
		<tr>
			<th>board_id</th>
			<td>${board.boardId}</td>
		</tr>
		<tr>
			<th>board_title</th>
			<td>${board.boardTitle}</td>
		</tr>
		<tr>
			<th>board_content</th>
			<td>${board.boardContent}</td>
		</tr>
		<tr>
			<th>board_writer</th>
			<td>${board.boardWriter}</td>
		</tr>
	</table>
</body>
</html>