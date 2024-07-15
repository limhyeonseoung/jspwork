<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		선언문 : 메소드 생성 및 멤버변수 생성시
		[사용방법]
		<%! 
			프로그램
		%>
	 --%>
	 
	<!-- 선언문 -->
    나의 이름은 <%=name %>입니다<br>
	나이는 <%=age %>입니다<br>
	<%! 
		String name = "아무개";
		int age = 25;
	%>
	
	<!-- 지역변수 -->
	<%--
	나의 취미는 <%=hobby %>입니다<br>
	혈액형은 <%=type %>입니다
	<%
		String hobby = "축구";
		String type = "A형";
	%>
	--%>
	<br><br>
	
	<!-- 메소드 선언은 반드시 선언문에서만 가능 -->
	<%!
		int one;
		int two = 1;
		
		public int plusMethod(int one, int two) {
			return one + two;
		}
	%>
	one과 two의 합은 ? <%=plusMethod(3,5) %>
</body>
</html>