<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel="stylesheet" href="style.css"/>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width initial-scale=1">
<%HttpSession session1=request.getSession();
Cookie cookie1[]=request.getCookies();%>
<style>
.container-fluid{
min-height:auto;
min-width:900px;
background-image:url("images/iqlogo.png");
}
a:hover,a:focus{
border:2px solid black;
background:red;
color:#ffffff;
font-size:36px;
transform:perspective(5.5cm);
box-shadow:10px 10px 5px -2px rgba(128, 0,128,2.5);
}
img:hover{
transform:skew(30deg,30deg);
}
#delay{
height:200px;
width:600px;
position:absolute;
border-radius:25px;
font-size:16px;
padding-top:10px;
text-align:center;
background-color:rgba(255,0,0,0.5);
display:block;
transition:transform 2s;
}
#delay:hover{
height:300px;
width:300px;
font-size:24px;
background-color:#ffcccc;
color:rgba(0,0,255,0.5);
transform:perspective(8cm);
left:200px;
box-shadow:20px 20px 0px -2px rgba(0,0,0,2.5);
}
span{
font-size:20px;
padding-right:30px;
}
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 400px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 2px 2px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

.form-container .cancel {
  background-color: red;
}

.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
<script>window.onload=function(){document.getElementById("my_audio").play()}
function openForm() {
	  document.getElementById("myForm").style.display = "block";
	}

	function closeForm() {
	  document.getElementById("myForm").style.display = "none";
	}

</script>
<title>Index@IQ System</title>
</head>
<body>
<div class="navbar navbar-expand-sm navbar-fixed-top">
<div class="container"><div class="navbar-header">
<a class="navbar-brand" href="index.jsp" style="color:blue;font-weight:bold;box-shadow:-2px 10px 10px 0px rgba(0,0,128,2.5);"><audio src="C:\FINALPROJECT\New folder\img\7 Oct, 17.22.mp3" id="my_audio" loop="loop"></audio><b>Test Your 4D</b></a>
<span id="Today" style="width:400px;height:50px;background-color:#000000;color:#ffffff;"><script>
var today=new Date();
document.getElementById("Today").innerHTML=today;
setInterval(updateToday, 1000);
function updateToday(){
	hours=today.getHours()%12;
	hours=hours?hours:12;
	var ct=today.getMonths()+ 1+"/"+today.getDate()+"/"+today.getFullYear()+"-"+hours+":"+today.getMinutes()+":"+today.getSeconds()+":"+ampm;
	document.getElementById("Today").innerHTML=ct;
	}

</script>
</span><img src="images/AI11.png"/>
<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#MyNavbar" aria-expande=false aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button></div>
<div class="collapse navbar-collapse">
<ul class="navbar-nav">
<li class="navbar-item"><a class="nav-link" href="AboutUs.jsp"><i class="fa fa-info" style="padding-left:150px;">AboutUs</i></a></li>
<li class="navbar-item"><a class="nav-link" href="Information.jsp"><i class="fa fa-tag">LearnMore</i></a></li>
<li class="navbar-item"><a class="nav-link" href="Settings.jsp"><i class="fa fa-cog"></i>Settings</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-user-circle"></i>UserLogin</a></li>
<li class="navbar-item"><a class="nav-link" href="InstituteLogin.jsp"><i class="fa fa-university">InstituteLogin</i></a></li>
<li class="navbar-item"><a class="nav-link" href="#"><i class="fa fa-eye">IQ Systems & More...</i></a></li>
<li class="navbar-item"><a class="nav-link" href="#"><i class="fa fa-tty">Contact</i></a></li>
</ul></div></div></div><br/>
      <div class="container-fluid">
<div id="delay"><img src="images/logoiq1.jpg" alt="iq1" width=200 height=100 style="padding:10px;"><h4 style="padding-right:50px;color:blue;font-weight:bold;">TEST YOUR IQ</h4>
<button class="open-button" onclick="openForm()">Open Form</button>
<div class="form-popup" id="myForm">
  <form action="#" class="form-container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="user_email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="user_password" required>

    <a href="UserLogin.jsp"><button type="submit" class="btn">Login</button></a>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div></div><br/><br/>
<div style="margin-left:800px;margin-top:0px;margin-right:0px;padding-top:0px;">
<div class="panel" style="width:600px;height:500px;text-align:center;border-radius:35px;box-shadow:20px 20px 10px -2px rgba(0,0,0,1)">
<div class="panel-heading" style="background-color:#3c6ff8;padding-top:10px;border-radius:25px;box-shadow:5px 5px 0px -2px rgba(0,0,0,1.5);"><h1>CHALLENGE YOURSELF</h1></div>
<div class="panel-body" style="background-color:#c1d0f7;padding-top:50px;border-radius:15px;"><a href="UserLogin.jsp"><span class="glyphicon">Check General Test</span></a>
<br/><br/><a href="InstituteLogin.jsp"><span class="glyphicon">Check Customised Test</span></a>
<br/><img src="images/Doot.png" alt="Wow" title="Doot" width=200px height=100px/>
</div>
<div class="panel-footer"><a href="UserLogin.jsp"><input type="button"  class="btn btn-primary" value="Single User?"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="InstituteLogin.jsp"><input type="button" class="btn btn-primary" value="Institute?"/></a></div></</div></div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>