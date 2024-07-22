<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="regBean" class="ch05.beanjino" />
<jsp:setProperty name="regBean" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" aling="center">
			<tr>
				<th colspan="2">회원가입</th>
				<jsp:getProperty property="name" name="regBean"/>님이 작성한 테이블
			</tr>
			<tr>
				<td>아이디</td>
				<td><jsp:getProperty name="regBean" property="id" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><jsp:getProperty name="regBean" property="pw" /></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><jsp:getProperty name="regBean" property="name" /></td>
			</tr>
			
			<tr>
				<td>생년월일</td>
				<td><jsp:getProperty name="regBean" property="birth" /></td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td><jsp:getProperty name="regBean" property="email" /></td>
	
			</tr>
	</table>
</body>
</html>