<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
for(int row=0;row<=10;row++)
	{
	%>
	<tr>
	<%
	for(int col=1;col<=10;col++)
	{
	%>
		<tr><td><%=row*col %></td></tr>
		<%
	}
		%>
	</tr>
	<%
	}
	%>

</body>
</html>