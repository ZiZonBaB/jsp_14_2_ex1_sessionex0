<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sessioninit.jsp</title>
</head>
<body>
<% //技记 按眉 积己
session.setAttribute("id", "tiger");
session.setAttribute("pw", 12345);

%>
<a href="sessionget.jsp">session.jsp肺 捞悼</a>
</body>
</html>