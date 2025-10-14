<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼..</title>
<style>
	h2{margin-left: 30px;}
	ul li{list-style: none; margin:10px;}
</style>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="/jweb01/register2" method="post">
		<ul>
			<li>
				<label for= "uname">이름:</label>
				<input type="text" name="uname" id="uname">
			</li>
			<li>
				<label for= "email">이메일:</label>
				<input type="text" name="email" id="email">
			</li>
			<li>
				<label for= "subject">과목:</label>
				<input type="checkbox" name="subject" value="java" checked>java
				<input type="checkbox" name="subject" value="jsp">jsp
				<input type="checkbox" name="subject" value="springboot">springboot
			</li>
			<li>
				<input type="submit" value="가입">
			</li>
			
		</ul>
	</form>
</body>
</html>