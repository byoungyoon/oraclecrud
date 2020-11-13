<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addBoardList</title>
</head>
<body>
	<h1>addBoardList</h1>
	<form method="post" action="/addBoardList">
		<table border="1">
			<tr>
				<th>board_title</th>
				<td><input type="text" name="boardTitle"></td>
			</tr>
			<tr>
				<th>board_content</th>
				<td><textarea name="boardContent"></textarea></td>
			</tr>
			<tr>
				<th>board_writer</th>
				<td><input type="text" name="boardWriter"></td>
			</tr>
		</table>
		<button type="submit">추가</button>
	</form>
</body>
</html>