<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, 테이블.*" %>
<jsp:useBean id="u1" class="테이블.사원01"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>사번</th>
            <th>사원명</th>
            <th>이메일</th>
            <th>전화번호</th>
            <th>부서코드</th>
            <th>월급</th>
        </tr>
<%
    ArrayList<Bean> alist = u1.getList();
    for(int i=0; i < alist.size(); i++) {
        Bean bean = alist.get(i);
%>
        <tr>
            <td><%=bean.getEmp_id() %></td>
            <td><%=bean.getEmp_name() %></td>
            <td><%=bean.getEmail() %></td>
            <td><%=bean.getPhone() %></td>
            <td><%=bean.getDept_code() %></td>
            <td><%=bean.getSalary() %></td>
        </tr>
<%
    }
%>
    </table>
</body>
</html>
