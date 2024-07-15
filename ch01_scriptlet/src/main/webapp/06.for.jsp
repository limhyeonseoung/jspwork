<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for</title>
</head>
<body>
<%
	int sum = 0;
	for (int i=1;i<=10;i++) {
		if(i<=9) { //끊었다가 쓸때는 반드시 중괄호를 해준다
%>
			<%=(i + "+") %>
<%
		} else {
%>
			<%=(i + "=") %>
<%
		}
			sum+=i;
	}
%>
<%=sum %>
</body>
</html>