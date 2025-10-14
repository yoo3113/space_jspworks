<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean - 로그인 처리</title>
</head>
<!-- login(인스턴스) : new LoginBean과 같음 -->
<jsp:useBean id="login" class="beans.LoginBean" scope="request"/>

<body>
	<%
		//폼에 입력된 값 받아오기
		String id = request.getParameter("uid");
		String pw = request.getParameter("passwd");
		
		//out.println("아이디: " + id + ", 비밀번호: " + pw);
		//받아온 데이터를 설정(입력)
		login.setUid(id);
		login.setPasswd(pw);
		
		boolean result = login.checkUser();
		if(result){
			out.println("로그인 성공!");
		}else{
			out.println("로그인 실패!");
		}
	%>
	
	<p>아이디 <%=login.getUid() %>
	<p>비밀번호 <%=login.getPasswd() %>

</body>
</html>