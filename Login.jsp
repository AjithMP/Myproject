<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login jsp</title>
</head>

<body style="background:url('https://jsginc.com/wp-content/uploads/2018/10/bigstock-170353778.jpg');background-size: 100% 250%;">

<div class="w3-bar w3-black w3-xlarge " ><b>Create an account for instant job update</b>
<form>
<a href="Signup.jsp"><input type="button" class="w3-green w3-ripple w3-btn w3-display-topright w3-border w3-border-white w3-xlarge"  value="Singup"></a>
</form>
</div>
<div class="w3-panel w3-display-container w3-red">
  <span onclick="this.parentElement.style.display='none'"
  class="w3-button w3-display-topright w3-large w3-yellow">Close</span>
  <p class="w3-text-white">Jobs seekers can get latest 2019 jobs notifications with various information such as  vacancies, eligibility, State and Central Government Jobs and IT jobs.Notifications for all openings in various sectors and apply for the preferred Jobs 2019 here. Job seekers can make use of this page to find jobs by category, education, board, location, experience, qualification, etc., and this page lists out the latest job openings from IT,BPO state, central, railway, bank, PSU, SSC, UPSC, Army, Navy, Defence, and jobs from top private companies..</p>

</div>
<center>

<br/>
<br/>
<br/>
<br/>
<br/>

<div class="w3-dropdown-click w3-display-middle-2 ">
    <button onclick="myFunction()" class="w3-white w3-hover-red w3-xxxlarge">Login</button>
    
    <div id="Demo" class="w3-dropdown-content w3-bar-block w3-card-4 w3-animate-zoom">
    
    <form action="Admin.jsp">
    <b>UserID or Mobile Number</b><input  type="text" name="mobileno">
   <b> Password:</b><input type="text"  name="password">
   <a href="Forgetpass.jsp"><b class="w3-text-blue w3-small">Forget password?</b></a>
   <br/>
    <input type="submit" value="Login">
    </form>
    </div>
    </div>
    <br/>
  <br/>
  <form action="User.jsp" >
  
  <input class=" w3-white w3-hover-blue w3-display-middle-3 w3-xxxlarge" type="submit" value="Latest Job Search" >
  </form>
<script>
function myFunction() {
  var x = document.getElementById("Demo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>
<div class="w3-bar w3-blue w3-display-bottomleft">
  <a href="#" class="w3-bar-item w3-button">About us</a>
  <a href="#" class="w3-bar-item w3-button">Contact us</a>
  <a href="#" class="w3-bar-item w3-button">Disclaimer</a>
  <a href="#" class="w3-bar-item w3-button w3-right">2019 © copyrights owned by Ajith</a>
  
</div>

</center>
</body>
</html>
