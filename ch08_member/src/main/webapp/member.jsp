<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>  
table {
    line-height: 50px;
    border-collapse: collapse;
} 
    th{
       background-color: darkolivegreen;
       width: 100%;
       color: white;
       text-align: center;      
    }

</style>
</head>
<body>
<table id="table1" border="1">
    <thead>
    <tr>  
        <th colspan="3"><h3>회원가입</h3></th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>아이디</td>
        <td><input id="a1"><input type="button" value="ID중복확인"></td>
        <td>영문과 숫자로만 입력.</td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><input id="a2"></td>
        <td>특수기호,영문,숫자가 각 1개 이상씩 들어가야 되고 8글자 이상</td>
    </tr>
    <tr>
        <td>비밀번호 확인</td>
        <td><input id="a3"></td>
        <td>위의 비밀번호를 한번 더 넣으세요</td>
    </tr>
    <tr>
        <td>이름</td>
        <td><input id="a4"></td>
        <td>한글로 입력</td>
    </tr>
    <tr>
        <td>성별</td>
        <td><input type="radio" id="male">남<input type="radio" id="female">여</td>
        <td>성별을 선택해주세요</td>
    </tr>
    <tr>
        <td>생년월일</td>
        <td><input id="a5"></td>
        <td>6글자로 입력 ex)190315</td>
    </tr>
    <tr>
        <td>E-mail</td>
        <td><input id="a6"></td>
        <td>ex) email@naver.com</td>
    </tr>
    <tr>
        <td>우편번호</td>
        <td><input id="a7"><input type="button" value="우편번호 찾기"></td>
        <td>우편번호를 검색하세요</td>
    </tr>
    <tr>
        <td>주소</td>
        <td><input id="long"></td>
        <td>상세주소가 없으면 입력해주세요</td>
    </tr>
    <tr>
        <td>취미</td>
        <td><input type="checkbox" id="ch1">인터넷&emsp;
            <input type="checkbox" id="ch2">여행&emsp;
            <input type="checkbox" id="ch3">게임&emsp;
            <input type="checkbox" id="ch4">영화&emsp;
            <input type="checkbox" id="ch5">운동&emsp;
        </td>
        <td>취미를 선택하세요</td>
    </tr>
    <tr>
        <td>직업</td>
        <td><select id="sel1">
            <option value="se1">공무원</option>
            <option value="se2">학생</option>
            <option value="se3">회사원</option>
            <option value="se4">무직</option>
        </select></td>
    </tr>
</tbody>
<tfoot>
    <tr>
    <td colspan="3" align="center">
        <input type="submit" value="회원가입"> 
        <input type="reset" value="다시쓰기">
        <input type="submit" value="로그인">
    </td>
    </tr>
    </table>
</tfoot>
</body>
</html>