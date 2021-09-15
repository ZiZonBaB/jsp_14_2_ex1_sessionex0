<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sessioninit.jsp</title>
</head>
<body>
<% //세션 객체 생성
session.setAttribute("id", "tiger");
session.setAttribute("pw", 12345);

%>
<a href="sessionget.jsp">session.jsp로 이동</a>
</body>
</html>