<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<section id="container">
		<h2>회원 가입</h2>
		<form action="/member?action=add" method="post">
			<ul>
				<li>
					<label>아이디</label>
					<input type="text" name="mid">
				</li>
				<li>
					<label>비밀번호</label>
					<input type="password" name="passwd">
				</li>
				<li>
					<label>이름</label>
					<input type="text" name="name">
				</li>
				<li>
					<label>성별</label>
					<input type="radio" name="gender" value="남자" checked>남
					<input type="radio" name="gender" value="여자">여
				</li>
				<li>
					<input type="submit" value="가입">
					<input type="reset" value="취소">
				</li>
			</ul>
		
		</form>
	</section>
</body>
</html>