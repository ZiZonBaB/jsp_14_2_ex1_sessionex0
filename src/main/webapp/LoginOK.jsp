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
	session.setAttribute("id", id); // session�� �̿��Ͽ� ���ٷ� ó�� ���� / session ��ü �ȿ� �¾�Ʈ����Ʈ�� �̿��Ͽ� id�� ���� 
	
	response.sendRedirect("welcome.jsp");
}
else{
	response.sendRedirect("login.html");
}
 // �ϵ� �ڵ� : ������ �����

%>
</body>
</html>