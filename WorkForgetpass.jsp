<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ph=request.getParameter("mobileno");
String npw=request.getParameter("password");
String cpw=request.getParameter("conformpass");
Connection con=null;
if(npw.equals(cpw))
{
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","");
Statement statement = con.createStatement();
ResultSet rs = statement.executeQuery("select * from userlog where mobileno ="+ph+" ") ;
int ct = 0;
while(rs.next())
{
ct++;	
}
if (ct > 0)
{

	
	PreparedStatement ps=con.prepareStatement("update userlog set pass = ? where mobileno = ? ");
	ps.setString(2,ph);
	ps.setString(1,npw);
	ps.executeUpdate();
out.print("Password updated sucessfully" );
}
else
{
	out.print("Invalid Mobile number");

}
}
catch(Exception e)
{
	out.print("Invalid Mobile number");

}	
}
else
{
	
	out.print("New password and Conform password doesn't matches please re-enter it again.Also check phone number.");
}
	
%>
</body>
</html>