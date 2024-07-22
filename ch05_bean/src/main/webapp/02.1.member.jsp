<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts.js" charset="UTF-8"></script>
</head> 
<body>
	<table border="1">
		<form method="post" name="regForm" action="02.2.memberProc.jsp">
			<tr>
				<th colspan="3">회원가입</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="id"></td>
				<td>5글자 이상 영문과 숫자로만 기재</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
				<td>영문,숫자,특수기호 각 1개이상씩, 3글자 이상</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="pwcheck"></td>
				<td>한번 더 입력</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name"></td>
				<td>한글로 2글자 이상</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="birth"></td>
				<td>13자 입력</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="email"></td>
				<td>ex) ex@gmail.com</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="button" value="회원가입" onclick="inputCheck()">&emsp;
					<input type="reset">
			</tr>
		</form>
	</table>
</body>
</html>