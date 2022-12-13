<%@page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="useful.js"></script>
<meta charset="ISO-8859-1">
<title>pattern13 # IQSystem</title>
<style>
.container-fluid{
min-height:520px;
min-width:900px;
}
.panel{
min-height:40px;
min-width:700px;
}

#clock{
height:50px;
width:300px;
float:right;
text-align:center;
background-color:#000000;
color:#ffffff;
font-size:20px;
}
</style>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" style="box-shadow:-2px -2px 2px 2px rgba(0,0,128,2.5)">
<div class="container"><div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span></button></div>
<a class="navbar-brand">Test Your 4D</a>
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav navbar-right">
<li><a href="Information.jsp"><span class="glyphicon glyphicon-info-sign">AboutUs</span></a></li>
<li><a href="startGeneralTest.jsp"><span class="glyphicon glyphicon-search">Start General Test</span></a></li>
<li><a href="UserLogOut.jsp"><span class="glyphicon glyphicon-log-out">UserLogOut</span></a></li>
<li><a href="InstituteLogOut.jsp"><span class="glyphicon glyphicon-log-out">InstituteLogOut</span></a></li>
<li><a href="GeneralTest.jsp"><span class="glyphicon glyphicon-cog">CheckGeneralTest</span></a></li>
<li><a href="CustomisedTest.jsp"><span class="glyphicon glyphicon-star">CustomisedTest</span></a></li>
</ul>
</div></div></div><br/><br/><br/>
<div class="container-fluid">
<form name="GTpatterns" method="POST" onsubmit="checkPattern();">
<div class="row text-center"><div class="col-xs-4"><div id="clock"><script>
let startingMinutes=30;
let time=startingMinutes*60;
const countdownEl=document.getElementById('clock');
setInterval(updateCountdown, 1000);
function updateCountdown(){
	let minutes=Math.floor(time/60);
	let seconds=time % 60;
	seconds=seconds<10 ?'0'+seconds:seconds;
	countdownEl.innerHTML=minutes+":"+seconds;
	time--;
	
}
</script></div><br/><br/>
<span id="Today" style="width:400px;height:50px;background-color:#000000;color:#ffffff;"><script>
function display_Today(){
var today=new Date();
document.getElementById("Today").innerHTML=today;
var ampm=today.getHours()>=12?'PM':'AM';
hours=today.getHours()%12;
hours=hours?hours:12;
var ct=today.getMonths()+ 1+"/"+today.getDate()+"/"+today.getFullYear()+"-"+hours+":"+today.getMinutes()+":"+today.getSeconds()+":"+ampm;
document.getElementById("Today").innerHTML=ct;
display_td();
}
function display_td(){
	setTimeout("display_Today()", 1000);
}
window.onload=display_td();
</script>
</span><br/><br/><div class="col-xs-4"><input type="button" value="First Pattern" class="btn btn-primary"></div>
<br/><br/><br/><br/><br/><br/><br/>Q. 3. <img src="images/pattern3.png" height=150 width=150/></div><div class="col-xs-4 col-xs-offset-1">
<div class="panel panel-primary"><div class="panel-heading"><h6>Find the One that comes next:</h6></div>
<div class="panel-body"><img src="images/pattern3a.png" height=150 width=150><input type="checkbox" id="check1"/>&nbsp;&nbsp;&nbsp;A.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/pattern3b.png" height=150 width=150/>
<input type="checkbox" id="check1"/>&nbsp;&nbsp;B.<br/><br/>
<img src="images/pattern3c.png" height=150 width=150/><input type="checkbox" id="check1"/>&nbsp;&nbsp;C.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/pattern3d.png" height=150 width=150/><input type="checkbox" id="check1"/>&nbsp;&nbsp;D.</div>
<div class="panel-footer"><a href="pattern12.jsp"><input type="button" value="Previous" class="btn btn-danger"/></a><a href="pattern21.jsp"><input type="button" class="btn btn-primary" value="Save and Next"/></a></div></div></div></div>
</form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>