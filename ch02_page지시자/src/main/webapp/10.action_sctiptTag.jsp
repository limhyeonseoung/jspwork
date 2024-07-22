<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptTag</title>
</head>
<body>
	<%-- <%! 선언문 (멤버변수,메소드) %> --%>
	<jsp:declaration>
		public int min(int x, int y) {
			return x > y ? x : y;
		}
	</jsp:declaration>
	
	<%-- <% 스크립트릿 (지역변수,for,if...) %> --%>
	<jsp:scriptlet>
		int num = 1;
	</jsp:scriptlet>
	
	<%-- <%=표현식 (변수나 메소드 호출하여 출력) %> --%>
		num =
	<jsp:expression>
		num
	</jsp:expression>
		3과 6중 더 큰수는?
	<jsp:expression>
		min(3,6)
	</jsp:expression>
</body>
</html>