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
<title>header3#IQSystem</title>
<style>
.navbar-brand{
margin-left:0px;
padding-left:0px;
}
i{
padding-right:20px;
font-weight:bold;
font-size:16px;
}
</style>
</head>
<body>
<div class="navbar navbar-expand-sm navbar-fixed-top">
<div class="container"><div class="navbar-header">
<a class="navbar-brand" href="index.jsp" style="color:blue;font-weight:bold;box-shadow:-2px 2px 2px 0px rgba(0,0,128,1.5);"><audio src="images/IQPOWER.mp3" type="audio/mpeg" loop="loop"></audio><b>Test Your 4D</b></a>
<span id="Today" style="width:300px;height:80px;background-color:#000000;color:#ffffff;"><script>
var today=new Date();
document.getElementById("Today").innerHTML=today;
</script>
</span><img src="images/AI11.png"/>
<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#MyNavbar" aria-expande=false aria-label="Toggle navigation">
<i class="navbar-toggler-icon"></i>
</button></div>
<div class="collapse navbar-collapse">
<ul class="navbar-nav">
<li class="navbar-item"><a class="nav-link"  href="Information.jsp"><i class="fa fa-tag">LearnMore</i></a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-user-circle">UserLogin</i></a></li>
<li class="navbar-item"><a class="nav-link" href="InstituteLogin.jsp"><i class="fa fa-university">InstituteLogin</i></a></li>
<li class="navbar-item"><a class="nav-link" href="Settings.jsp"><i class="fa fa-cog">Settings</i></a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogout.jsp"><i class="fa fa-arrow-right">UserLogout</i></a></li>
<li class="navbar-item"><a class="nav-link" href="InstituteLogout"><i class="fa fa-rocket">InstituteLogout</i></a></li>
</ul></div>
</div></div>
</body>
</html>