<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Information</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body >
<table class="w3-table w3-striped w3-bordered w3-hover">
<% 
String rl=request.getParameter("role");
String loc=request.getParameter("location");

Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "" );
	PreparedStatement ps=con.prepareStatement("select * from job1  where role = ? AND location = ? ");
ps.setString(1,rl);
ps.setString(2,loc);
ResultSet rs = ps.executeQuery();

while(rs.next())
{
	
out.print("<tr><th>Role</th><th>Location</th><th>Date</th><th>Exp</th><th>CtC</th></tr>");
out.print("<tr>");
out.print("<td>");
out.print(rs.getString("role"));
out.print("</td>");
out.print("<td>");
out.print(rs.getString("location"));
out.print("</td>");
out.print("<td>");
out.print(rs.getString("date"));
out.print("</td>");
out.print("<td>");
out.print(rs.getString("exp"));
out.print("</td>");
out.print("<td>");
out.print(rs.getString("ctc"));
out.print("</td>");
	
	out.print("</tr>");
out.println("");
}

}

catch(Exception e)
{
	out.print(e);
}
%>
</table>
</body>
</html>