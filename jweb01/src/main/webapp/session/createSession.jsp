<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 생성</title>
</head>
<body>
	<h2>세션 생성 성공</h2>
	<%=session %>
	
	<p>세션 ID: <%=session.getId() %>
</body>
</html>