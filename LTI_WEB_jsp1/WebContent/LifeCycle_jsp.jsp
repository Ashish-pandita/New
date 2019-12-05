<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
int counter=0;
public void jspInit(){
 System.out.println("jspInit...");
 counter=10;
}
public void jspDestroy(){
	System.out.println("jspDestroy..");
	counter=0;
}
%>

We are testing life cycle methods..
<% counter++;%>
The counter is:<%= counter %>


</body>
</html>