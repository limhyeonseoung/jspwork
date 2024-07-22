<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	forword 되기전 페이지
<%	
	request.setCharacterEncoding("UTF-8");
	String user = request.getParameter("user");
	String blood = request.getParameter("blood");
	
	if(blood.equals("A")){
%>
	<jsp:forward page="A형.jsp" />
	<% 	}
	
	else if(blood.equals("B")){
%>
	<jsp:forward page="B형.jsp" />
	<%	}
	
	else if(blood.equals("O")){
%>
	<jsp:forward page="O형.jsp" />
	<%	}

	else {
%>
	<jsp:forward page="AB형.jsp" />
	<% 
}
%>
</body>
</html>