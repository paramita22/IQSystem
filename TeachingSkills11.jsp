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
<title>TeachingSkillTest=>Page1 # IQSystem</title>
<style>
.container-fluid{
height:700px;
width:auto;
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
height:560px;
width:800px;
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
<h4><b>EXAM CODE:24</b></h4>
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
<h4>Exam Name:<br/>CUSTOMISED TEST ON TEACHING SKILL</h4>
<li class="navbar-item"><a class="nav-link" href="index.jsp"><i class="fa fa-cog"></i>Back to Home</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-arrow-right"></i>UserLogin</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogout.jsp"><i class="fa fa-plane"></i>UserLogout</a></li></ul> 
                        
                <div class="panel panel-primary">
            <div class="panel-heading"><img src="images/AI11.png" alt="AI chatbot"/>
                <h4 style="float:right;">Full Marks:30[Each Correct_ans=+3||Each Wrong Answer=-1]</h4><br/>Duratiion:30 mins</div>
                    <div class="panel-body" style="text-align:left;">
              <p><img src="images/InkedTS2_LI.jpg"/>Q.1)Fill Gap in title[Hint:recent advancements]</p>
                            
               <br/>
                            
                  <%  ResultSet rs2=st.executeQuery("select teaching_ans from teaching_skill_ans where teaching_quesid=901");
                 while(rs2.next()){
                 %>
                 <input type="checkbox" name="teaching_ans1">
                 <%
                   
                  out.println(rs2.getString(1));
                 %><br/>
                  
                <%}%>
                  <br/>
              <%  ResultSet rs3=st.executeQuery("select teaching_ques from teaching_skill where teaching_quesid=902");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   ResultSet rs4=st.executeQuery("select teaching_ans from teaching_skill_ans where teaching_quesid=902");
                while(rs4.next()){%>
                <input type="checkbox" name="teaching_ans2">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
%> <br/>
                    </div>

                    
                    <div class="panel-footer"><a href="TeachingSkills12.jsp"><input type="submit" value="Save and Next" class="btn btn-danger"/></a></div>
                    </div></form></div><jsp:include page="footer.jsp"></jsp:include>
</body>
</html>