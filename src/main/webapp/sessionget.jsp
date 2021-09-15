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
<%// Object를 클래스로 받아주면 모든 객체를 다 수용해주는 것이다
Object obj1 = session.getAttribute("id"); // id 의 value값을 객체형태로 변환

String id = obj1.toString();
out.println(id+"<br>");

Object obj2 = session.getAttribute("pw");// pw 의 value값을 객체형태로 변환
//String pw = obj2.toString(); // int 로 사용하기에는 에러가 뜬다. 
Integer pw = (Integer)obj2; //Wrapper 클래스를 이용하여 형변환이 가능하다.
out.println(pw+"<br>");

String sName,sValue;

Enumeration enumeration = session.getAttributeNames();
while(enumeration.hasMoreElements()){
	sName = enumeration.nextElement().toString(); // session 객체의 name을 sName에 저장
	sValue = session.getAttribute(sName).toString(); // sName의 value값을 sValue에 저장
	out.println("sName : "+sName+"<br>");
	out.println("sValue : "+sValue+"<br>");
}

String sessid = session.getId();
out.println("session id : "+sessid+"<br>");

int sesstime = session.getMaxInactiveInterval();
out.println("session Interval : "+sesstime+"<br>"); // 세션의 유효시간 표시 (초 단위)

out.println("<br>");

out.println("*************************** 지금부터 세션을 삭제하겠습니다.***************************<br>");

session.removeAttribute("id"); // 특정한 값을 지우기
Enumeration enumeration2 = session.getAttributeNames();
while(enumeration2.hasMoreElements()){
	sName = enumeration2.nextElement().toString(); // session 객체의 name을 sName에 저장
	sValue = session.getAttribute(sName).toString(); // sName의 value값을 sValue에 저장
	out.println("sName : "+sName+"<br>");
	out.println("sValue : "+sValue+"<br>");
}


session.invalidate(); // 세션의 모든 데이터를 삭제 , void 타입으로써 반환값이 없다.

 if(request.isRequestedSessionIdValid()){ 
	 out.println("세션이 아직 살아있습니다.<br>");
 }else{
	 out.println("세션이 삭제 되었습니다.<br>");
 }
%>
</body>
</html>