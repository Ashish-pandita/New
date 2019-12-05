<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome to JSP...<br>
The time at Server is: <%= new java.util.Date() %>
<%!
int counter=0;
public int getCounter(){
	return this.counter;
}
public void setCounter(int counter){
	this.counter=counter;
}
public void increamentCounter(){
	this.counter++;
}
%>
<%
increamentCounter();
%>
The visit count is :<%= counter %>

</body>
</html>