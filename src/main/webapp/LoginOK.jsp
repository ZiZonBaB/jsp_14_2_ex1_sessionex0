<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LoginOK.jsp</title>
</head>
<body>
<%!
String id,pw;
%>
<%
request.setCharacterEncoding("EUC-KR");

id = request.getParameter("id");
pw = request.getParameter("pw");

if(id.equals("abcde")&&pw.equals("12345")){
	session.setAttribute("id", id); // session을 이용하여 한줄로 처리 가능 / session 객체 안에 셋어트리뷰트를 이용하여 id를 저장 
	
	response.sendRedirect("welcome.jsp");
}
else{
	response.sendRedirect("login.html");
}
 // 하드 코딩 : 억지로 만들기

%>
</body>
</html>