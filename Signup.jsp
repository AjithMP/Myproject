<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
</head>
<body bgcolor="skyblue">
<div class="w3-container w3-red w3-animate-right">
<h1>Signup form</h1></div>
<center>
<form action="WorkSignup.jsp" class=" w3-container w3-display-middle ">
<b>First Name:</b><input class="w3-input" type="text" name="firstname"><br/>
<b>Last Name:</b><input class="w3-input" type="text" name="lastname"><br/>
<b class="w3-tooltip w3-input">Mobile Number:
<span class="w3-text">(<em>Should be unique</em>)</span><input  class="w3-input" type="text" name="mobileno"></b><br/>
<b>Password</b><input class="w3-input" type="text" name="password"><br/>
<input  class="w3-button w3-green w3-ripple w3-btn" type="submit" value="Save">
</form>
</center>
</body>
</html>