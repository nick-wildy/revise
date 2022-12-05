<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-main.jsp</title>
</head>
<body>

<%--
		로그인에 성공하면 main으로 이동한다
		main에서는 로그아웃 버튼으로 로그아웃 가능
		현재 로그인한 사용자의 이름과 id를 출력해야 한다
 --%>

<%
	if(session.getAttribute("login") == null) {
		response.sendRedirect("ex02-form.jsp");
		return;
	}
%>
 
 <h1>ex02-main.jsp</h1>
 <hr>

 
 <h3>
 	${login.username }
 	(${login.userid })
 	님 로그인 성공, 안녕하세요 
 </h3>
 
 <p>
 	<a href="ex02-logout.jsp"><button>로그아웃</button></a>
 </p>

</body>
</html>