<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sessionget.jsp</title>
</head>
<body>
<%// Object�� Ŭ������ �޾��ָ� ��� ��ü�� �� �������ִ� ���̴�
Object obj1 = session.getAttribute("id"); // id �� value���� ��ü���·� ��ȯ

String id = obj1.toString();
out.println(id+"<br>");

Object obj2 = session.getAttribute("pw");// pw �� value���� ��ü���·� ��ȯ
//String pw = obj2.toString(); // int �� ����ϱ⿡�� ������ ���. 
Integer pw = (Integer)obj2; //Wrapper Ŭ������ �̿��Ͽ� ����ȯ�� �����ϴ�.
out.println(pw+"<br>");

String sName,sValue;

Enumeration enumeration = session.getAttributeNames();
while(enumeration.hasMoreElements()){
	sName = enumeration.nextElement().toString(); // session ��ü�� name�� sName�� ����
	sValue = session.getAttribute(sName).toString(); // sName�� value���� sValue�� ����
	out.println("sName : "+sName+"<br>");
	out.println("sValue : "+sValue+"<br>");
}

String sessid = session.getId();
out.println("session id : "+sessid+"<br>");

int sesstime = session.getMaxInactiveInterval();
out.println("session Interval : "+sesstime+"<br>"); // ������ ��ȿ�ð� ǥ�� (�� ����)

out.println("<br>");

out.println("*************************** ���ݺ��� ������ �����ϰڽ��ϴ�.***************************<br>");

session.removeAttribute("id"); // Ư���� ���� �����
Enumeration enumeration2 = session.getAttributeNames();
while(enumeration2.hasMoreElements()){
	sName = enumeration2.nextElement().toString(); // session ��ü�� name�� sName�� ����
	sValue = session.getAttribute(sName).toString(); // sName�� value���� sValue�� ����
	out.println("sName : "+sName+"<br>");
	out.println("sValue : "+sValue+"<br>");
}


session.invalidate(); // ������ ��� �����͸� ���� , void Ÿ�����ν� ��ȯ���� ����.

 if(request.isRequestedSessionIdValid()){ 
	 out.println("������ ���� ����ֽ��ϴ�.<br>");
 }else{
	 out.println("������ ���� �Ǿ����ϴ�.<br>");
 }
%>
</body>
</html>