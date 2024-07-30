<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="member.MemberMgr"/>
<%
    String id = request.getParameter("id");
    boolean result = mMgr.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
<%
    if(result) {
%>
        alert("<%= id %>는 이미 존재하는 ID입니다.");
<%
    } else {
%>
        alert("사용가능한 아이디 입니다");
<%
    }
%>
</script>
</head>
<body>
    <a href="" onclick="self.close()">닫기</a>
</body>
</html>
