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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	session.setAttribute("idkey", id);
	session.setMaxInactiveInterval(60*3);
%>S
<h1>Session Ex</h1>
<form method="post" action="05.3.session.jsp">
	1. 가장 좋아하는 계절은? <p/>
	<input type="radio" name="season" value="봄">봄
	<input type="radio" name="season" value="여름">여름
	<input type="radio" name="season" value="가을">가을
	<input type="radio" name="season" value="겨울">겨울
	
	2. 가장 좋아하는 과일은?<p/>
	<input type="radio" name="fruit" value="사과">사과
	<input type="radio" name="fruit" value="수박">수박
	<input type="radio" name="fruit" value="오렌지">오렌지
	<input type="radio" name="fruit" value="딸기">딸기<p/>
	<input type="submit" value="제출">	
</form>
</body>
</html>