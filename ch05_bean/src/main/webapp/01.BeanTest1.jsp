<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="test" class="ch05.BeanTest1" />
<jsp:setProperty name="test" property="name" value="자바빈 사용 : 홍길동"/>
	 <!-- setName("응애");  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	자바빈의 name의값 : <jsp:getProperty name="test" property="name"/>
</body>
</html>