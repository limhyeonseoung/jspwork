<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	session.setAttribute("idkey","kim");
	session.setAttribute("pwkey","1234");
%>
세션이 생성됨<p/>
세션 정보는 <a href="03.2.testeSession.jsp">dd</a>
</body>
</html>