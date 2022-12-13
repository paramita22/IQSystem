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
<title>Series11 # IQSystem</title>
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
<form name="GeneralComLang" method="GET" action="Servlet1">
<h4><b>Exam Code:11</b></h4>
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
<h4>Exam Name:<br/>Comprehension and Language</h4>

<li class="navbar-item"><a class="nav-link" href="index.jsp"><i class="fa fa-cog"></i>Back to Home</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-arrow-right"></i>UserLogin</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogout.jsp"><i class="fa fa-plane"></i>UserLogout</a></li></ul>               
<div class="panel panel-primary">
                 <div class="panel-heading" style="height:80px;background-color:blue;color:#ffffff;">
                <h6><b><i>Full Marks:20[Each Correct_ans=+2||Each Wrong Answer=-1]<br/>Duration:30 mins</i></b></h6></div>
                    <div class="panel-body" style="text-align:left;">
                <% 
                ResultSet rs1=st.executeQuery("select series_ques from series where seriesid=201");
                %>
                <%
                while(rs1.next()){
                out.println(rs1.getString(1));
                    }%>
               <br/>
                            
                  <%  ResultSet rs2=st.executeQuery("select series_ans from series_ans where seriesid=201");
                 while(rs2.next()){
                 %>
                 <input type="checkbox" name="series_ans1">
                 <%
                   
                  out.println(rs2.getString(1));
                 %><br/>
                  
                <%}%>
                  <br/>
              <%  ResultSet rs3=st.executeQuery("select series_ques from series where seriesid=202");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   ResultSet rs4=st.executeQuery("select series_ans from series_ans where seriesid=202");
                while(rs4.next()){%>
                <input type="checkbox" name="series_ans2">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
%> </div><br/>
                    </div>
                    <div class="panel-footer"><a href="Series12.jsp"><input type="button" value="Save and Next" class="btn btn-danger"/></a></div>
                    </div></form></div><jsp:include page="footer.jsp"></jsp:include>
</body>
</html>