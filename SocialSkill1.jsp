<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<%HttpSession session1=request.getSession();
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
String userid=(String)session1.getAttribute("userid");
ResultSet rs=st.executeQuery("select * from users where userid="+userid);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SocialSkillTest=>Page1 # IQSystem</title>
<style>
.container-fluid{
height:660px;
width:900px;
background-color:aliceblue;
}
#inverse{
height:500px;
width:250px;
padding-top:20px;
margin-left:0px;
text-align:left;
position:absolute;
background-color:#000000;
color:#ffffff;
border:5px solid #ffffff;
}
.panel{
height:500px;
width:700px;
margin-top:10px;
margin-bottom:20px;
margin-left:auto;
margin-right:auto;
float:right;
border:5px groove #cccccc;
box-shadow:5px 5px 0px -2px rgba(0,0,0,0.5);
}
#clock{
height:50px;
width:200px;
float:left;
left:0px;
text-align:center;
background-color:#000000;
color:#ffffff;
font-size:20px;
}
</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<form name="teachingskill" method="GET" action="/Servlet9">
<h4><b>EXAM CODE:25</b></h4>
<span id="Today" style="background-color:#000000;color:#ffffff;"><script>
var today=new Date();</script>
   </span>
   <h4><b>EXAM CODE:23</b></h4>
<div id="clock"><script>
const startingMinutes=30;
let time=startingMinutes*60;
const countdownEl=document.getElementById('clock');
setInterval(updateCountdown, 1000);
function updateCountdown(){
	const minutes=Math.floor(time/60);
	let seconds=time % 60;
	seconds=seconds<10 ?'0'+seconds:seconds;
	countdownEl.innerHTML=minutes+":"+seconds;
	time--;
	
}

</script></div><br/><br/><br/>
<ul class="nav" id="inverse">
<h4>Exam Name:<br/>CUSTOMISED TEST ON SOCIAL SKILL</h4>

<li class="navbar-item"><a class="nav-link" href="index.jsp"><i class="fa fa-cog"></i>Back to Home</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-arrow-right"></i>UserLogin</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogout.jsp"><i class="fa fa-plane"></i>UserLogout</a></li></ul> 
                        
                        
                <div class="panel panel-primary">
            <div class="panel-heading"><img src="images/AI11.png">
                <h4 style="float:right;">Duration:30 min<br/>Full Marks:30[Each Correct_ans=+3||Each Wrong Answer=-1]</h4></div>
                    <div class="panel-body" style="text-align:left;">
              <p>Q.1)Imparting a helping hand while teaching, is called</p>
                            
                 <br/>
               <input type="checkbox" name="businessl_ans7">A. Mentoring<br/>
               <input type="checkbox" name="business_ans7">B. Teaching<br/>
               <input type="checkbox" name="business_ans7">C. Communication<br/>
               <input type="checkbox" name="business_ans1">D. Education<br/>
               
               <p>Q.2)EXpress in one word:<img src="images/SS2.jpg"></p><br/>
            	 <input type="checkbox" name="mnagerial_ans8">A. Group<br/>
               <input type="checkbox" name="mnagerial_ans8">B. Cold<br/>
               <input type="checkbox" name="mnagerial_ans8">C. Teamwork<br/>
               <input type="checkbox" name="mnagerial_ans8">D. Dream<br/><br/></div>             
                    
                    <div class="panel-footer"><a href="SocialSkill2.jsp"><input type="submit" value="Save and Next" class="btn btn-danger"/></a></div>
                    </div></div></div></form></div><jsp:include page="footer.jsp"></jsp:include>
</body>
</html>