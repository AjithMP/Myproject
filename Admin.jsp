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
String un=request.getParameter("mobileno");
String pw=request.getParameter("password");
Connection con=null;
try
{

	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root","" );
	
	PreparedStatement ps = con.prepareStatement("select * from admin where userName = ? AND pass = ? ");
	ps.setString(1,un);
	ps.setString(2,pw);
ResultSet rs = ps.executeQuery();
	
		while (rs.next()) {
		response.sendRedirect("JobUpdate.jsp");
		}

		//user access 
		PreparedStatement py = con.prepareStatement("select * from userlog where mobileno = ? AND pass = ? ");
		
		py.setString(1,un);
		py.setString(2,pw);
	ResultSet  ry= py.executeQuery();
		
			while (ry.next()) {
			response.sendRedirect("User.jsp");
			
			
		}
	out.print("<h1>Invalid login</h1>");

	
	//response.sendRedirect("Login.jsp");	
}
catch(Exception e)
{
out.print(e);
}
%>
</body>
</html>