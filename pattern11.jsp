<%@page import="java.sql.*"%>
<%HttpSession session1=request.getSession();
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
int iqexamcode=13;
int userid=10224;
String user_fname="Pandora";
String user_lname="Parish";
%>
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
<title>pattern11 # IQSystem</title>
<style>
.container-fluid{
min-height:600px;
min-width:1000px;
}
form{
font-size:16px;
}
.panel{
min-height:150px;
min-width:700px;
position:absolute;
}

#clock{
height:40px;
width:200px;
float:right;
text-align:center;
background-color:#000000;
color:#ffffff;
font-size:20px;
}
</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid"><h4>General Test on Patterns</h4>
<form name="GTpatterns" method="GET" action="Servlet3">
<div class="col-xs-2"><div id="clock"><script>
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


</script></div><br/><br/><%PreparedStatement ps1=conn1.prepareStatement("insert into general_test values");%>
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
</span>

<div class="collapse navbar-collapse" style="left-margin:0px;position:absolute;">
<ul class="nav navbar-nav" style="background-color:#000000;color:#ffffff;">
<li style="color:#ffffff;"><h4>Reg. no.:<%=userid %></h4></li>
<li style="color:#ffffff;"><h4>Name: <%=user_fname+"\t"+user_lname %></h4></li></ul></div><br/><br/><div class="col-xs-4 col-xs-offset-2" style="margin:50px;"><input type="button" value="Exam Code: <%out.println(iqexamcode);%>" class="btn btn-primary"><input type="button" value="First Pattern" class="btn btn-primary"></div>
<br/><br/><br/><br/><br/><br/><br/>Q. 1. <img src="images/pattern1.jpg"/></div>
<div class="col-xs-4 col-xs-offset-1">
<div class="panel panel-primary"><div class="panel-heading"><h6>Find the One that comes next:</h6></div>
<div class="panel-body"><img src="images/pattern1a.jpg"><input type="checkbox" id="check1"/>&nbsp;&nbsp;&nbsp;A.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/pattern1b.jpg"/>
<input type="checkbox" id="check1"/>&nbsp;&nbsp;B.<br/><br/>
<img src="images/pattern1c.jpg"/><input type="checkbox" id="check1"/>&nbsp;&nbsp;C.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/pattern1d.jpg"/><input type="checkbox" id="check1"/>&nbsp;&nbsp;D.</div>
<div class="panel-footer"><a href="pattern12.jsp"><input type="button" class="btn btn-primary" value="Save and Next"/></a></div></div></div>
</form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>