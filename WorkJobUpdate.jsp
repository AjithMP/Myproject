<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String rl=request.getParameter("role");
String loc=request.getParameter("location");
String idate=request.getParameter("data");
String exp=request.getParameter("exp");
String ctc=request.getParameter("rr");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","");
	PreparedStatement ps=con.prepareStatement("insert into job1 values(?,?,?,?,?)");
	ps.setString(1,rl);
	ps.setString(2,loc);
	ps.setString(3,idate);
	ps.setString(4,exp);
	ps.setString(5,ctc);
	ps.executeUpdate();
	con.close();

}
catch(Exception e)
{
	out.print(e);
}
out.print("Inserted Sucessfully");
%>
</body>
</html>