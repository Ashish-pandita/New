<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
private String db_driver,db_url,db_user,db_password;
private Connection conn=null;

public void jspInit(){
	//getting the servlet initial parameters via config object
	db_driver = "oracle.jdbc.driver.OracleDriver";
	db_url = "jdbc:oracle:thin:@localhost:1521:XE";
	db_user = "hr";
	db_password = "hr";
	
	System.out.println(db_driver + ":" + db_url + ":" + db_user + ":" + db_password);
	
	try {
		// 1. load the jdbc driver
		Class.forName(db_driver);
		System.out.println("Driver loaded...");

		// 2. create the connection
		conn = DriverManager.getConnection(db_url, db_user, db_password);
		System.out.println("Connected:" + conn);

		} catch (ClassNotFoundException e) {
		System.err.println("ShowLogin_Servlet->unable to load the JDBC Driver...");
		} catch (SQLException e) {
		System.err.println("ShowLogin_Servlet->unable to establish the database connection...");
		}
}
%>
<%
String SQL = "SELECT * FROM Login";
StringBuffer strHTML = new StringBuffer();

try {
// 3. create a statement object
PreparedStatement pstat = conn.prepareStatement(SQL);

// 4. execute the query
ResultSet rs = pstat.executeQuery();

// access the existing session...
strHTML.append("<table>");


// 5. process the result
while (rs.next()) {
String username = rs.getString("username");
String password = rs.getString("password");
strHTML.append("<tr><td>" + username + "</td><td>" + password + "</td>");
}
strHTML.append("</table>");

rs.close();
} catch (SQLException e) {
e.printStackTrace();
}
out.println(strHTML.toString());
%>


</body>
</html>