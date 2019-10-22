<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JobUpdate</title>
</head>
<body style="background:url('https://www.luxinnovation.lu/wp-content/uploads/2017/03/Creative-Industries_computational-2048955_1920.jpg');background-size: 105% 1300%;">
<center>
<div class="w3-container w3-purple w3-animate-right">
<h1>New Job Entry</h1></div>
<form action="WorkJobUpdate.jsp" class="w3-container w3-display-middle">
<b>Role:</b><input type="text" class="w3-input" name="role"><br/>
<b>Location</b><input type="text" class="w3-input" name="location"><br/>
<b>Interview Date:</b><input type="text" class="w3-input" name="date"><br/>
<b>Experience</b><input type="text" class="w3-input" name="exp"><br/>
<b>CTC</b><input type="text" class="w3-input" name="rr"><br/>
<input class=" w3-btn w3-green w3-ripple w3-xlarge w3-border w3-border-red" type="submit" value="Save"><br/>

</form></center></body>
</html>