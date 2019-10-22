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
String fn=request.getParameter("firstname");
String ln=request.getParameter("lastname");
String pw=request.getParameter("password");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","");
	Statement statement = con.createStatement() ;
    ResultSet rs = statement.executeQuery("select * from userlog where mobileno ="+ph+" ") ;
		int ct = 0;
while(rs.next())
{
ct++;	
}
if (ct > 0)
{
out.print("<b >"+ph+"</b> Mobile Number was already registered" );
}
else
{
	
	PreparedStatement ps=con.prepareStatement("insert into userlog values(?,?,?,?)");
	ps.setString(2,fn);
	ps.setString(3,ln);
	ps.setString(1,ph);
	ps.setString(4,pw);
	ps.executeUpdate();
		out.print("<h3><b>Hi ");
		out.print(fn);
		out.print(ln);
		out.print("   you have successfully created an account please login into our site using this link</b></h3>");
		con.close();
	
	
}
}
catch(Exception e)
{
	out.print(e);
}
%>
<b><a href="Login.jsp">Homepage</a></b>
</body>
</html>