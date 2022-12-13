<%@page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr"); 
Statement st=conn1.createStatement();%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SocialSkill2 # IQSystem</title>
<style>
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
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<form name="socislskill" method="GET" action="/Servlet9">
<div class="row text-center"><div class="col-xs-2"><div id="clock"><script>
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

</script></div></div><br/>
<span id="Today" style="width:400px;height:150px;background-color:#000000;color:#ffffff;"><script>
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
</span></div><br/><div class="row text-center">
<div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading"><img src="images/AI11.png"/>[Continued after Q.2 in SOCIAL SKILL]</div>
                    <div class="panel-body" style="text-align:left;font-color:#000000;">
                
               
               <img src="images/InkedSS3_LI.jpg">Read Blurred<p></p><br/>
               <input type="checkbox" name="businessl_ans7">A. Association<br/>
               <input type="checkbox" name="business_ans7">B. Communication<br/>
               <input type="checkbox" name="business_ans7">C. Finance<br/>
               <input type="checkbox" name="business_ans7">D. Learning<br/><br/>             
                 <p>...is a social skill important in custromer service<br/>
            	  <input type="checkbox" name="mnagerial_ans8">A. Relationship Management<br/>
               <input type="checkbox" name="mnagerial_ans8">B. Marketing Management<br/>
               <input type="checkbox" name="mnagerial_ans8">C. Operation Management<br/>
               <input type="checkbox" name="mnagerial_ans8">D. Financial Management</div>
               <div class="panel-footer"><a href="SocialSkill1.jsp"><input type="button" value="previous" class="btn btn-danger" style="float:left;"></a></div>
                    </div></div>
               
            <div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">[Continued after Q.4]</div>
                           <div class="panel-body" style="text-align:left;">
                          <p>Q.5)Predict inked</p><img src="images/InkedSS5_LI.jpg"/><br/>
               <input type="checkbox" name="businessl_ans7">A. Relationship<br/>
               <input type="checkbox" name="business_ans7">B. Patience<br/>
               <input type="checkbox" name="business_ans7">C. Communication<br/>
               <input type="checkbox" name="business_ans7">D. Interaction<br/><br/>
               <p>Q.6) ... is an essential social skill in workplace</p><br/>
            	 <input type="checkbox" name="mnagerial_ans8">A. Patience<br/>
               <input type="checkbox" name="mnagerial_ans8">B. Cooperation<br/>
               <input type="checkbox" name="mnagerial_ans8">C. Coping abilities<br/>
               <input type="checkbox" name="mnagerial_ans8">D. Stress of schedule</div>       
                <div class="panel-footer"><a href="SocialSkill3.jsp"><input type="submit" class="btn btn-primary" value="Save and Next" style="float:right;"/></a></div>
 </div>          
                
                </div></div></form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>