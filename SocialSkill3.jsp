<%@page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdeb1","hr","hr"); 
Statement st=conn1.createStatement();%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SocialSkill3 # IQsystem</title>
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
<form name="socialskill" method="GET" action="/Servlet10">
<div class="row text-center"><div class="col-xs-4"><div id="clock"><script>
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

</script></div>
</span><div class="row text-center">
            <div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading"><img src="images/AI11.png"/>[SOCIAL SKILL TEST Continued after Q.6]</div>
                    <div class="panel-body" style="text-align:left;">
                              <img src="images/SS4.jpg"><p>A present day remedy for teenagers</p>
               <input type="checkbox" name="businessl_ans7">A. Music<br/>
               <input type="checkbox" name="business_ans7">B. Calming Strategies<br/>
               <input type="checkbox" name="business_ans7">C. Chilling<br/>
               <input type="checkbox" name="business_ans7">D. Learning<br/><br/>             
                 <p>...is an important non verbal social tool<br/>
            	  <input type="checkbox" name="mnagerial_ans8">A.Relationship<br/>
               <input type="checkbox" name="mnagerial_ans8">B. Communication<br/>
               <input type="checkbox" name="mnagerial_ans8">C. Body Language<br/>
               <input type="checkbox" name="mnagerial_ans8">D. Management</div>
               <div class="panel-footer"><a href="SocialSkill2.jsp"><input type="button" value="previous" class="btn btn-danger" style="float:left;"></a></div>
                    </div></div>
               
            <div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">[Continued after Q.8]</div>
                           <div class="panel-body" style="text-align:left;">
                          <p>Q.5)Skill to encourage students</p><img src="images/SS7.jpg"/><br/>
               <input type="checkbox" name="businessl_ans7">A. Relationship<br/>
               <input type="checkbox" name="business_ans7">B. Group activity<br/>
               <input type="checkbox" name="business_ans7">C. Communication<br/>
               <input type="checkbox" name="business_ans7">D. Peer Learning<br/><br/>
               <p>Q.6)...is a tool for social media marketing that started off as schedular</p><br/>
            	 <input type="checkbox" name="mnagerial_ans8">A. Twitter<br/>
               <input type="checkbox" name="mnagerial_ans8">B. Whatsapp<br/>
               <input type="checkbox" name="mnagerial_ans8">C. Facebook<br/>
               <input type="checkbox" name="mnagerial_ans8">D. Buffer</div> <br/>      
       <div class="panel-footer">
        <a href="GeneralIQgradecard.jsp"><input type="submit" class="btn btn-primary" value="Submit and GetResult" onclick="alert('Do You Really want to submit?');" style="float:right;"/></a></div>
</div></div></div></form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>