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
<title>TeachingSkill2 # IQSystem</title>
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
<form name="teachingskill" method="GET" action="/Servlet9">
<div class="col-xs-6">
                <div class="panel panel-primary" style="min-height:600px;min-width:600px;position:absolute;margin-bottom:20px;margin-left:150px;margin-right:20px;border:5px groove lightblue;
box-shadow:5px 5px 0px -2px rgba(0,0,0,0.5);">
                    <div class="panel-heading" style="height:100px;width:400px;background-color:blue;color:#ffffff;"><div class="col-xs-4"><div id="clock"><script>
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

</script></div></div><br/>[Continued after Q.2 in BUSINESS SKILL]</div>
                    <div class="panel-body" style="text-align:left;">
                
               
               <img src="images/InkedTS1_LI.jpg">Read Blurred<p></p><br/>
               <%  ResultSet rs2=st.executeQuery("select teachingskill_ans from teachingskill_ans where teaching_skill_ques_id=903");
                 while(rs2.next()){
                 %>
                 <input type="checkbox" name="teaching_ans3">
                 <%
                   
                  out.println(rs2.getString(1));
                 %><br/>
                  
                <%}%>
                  <br/>
              <%  ResultSet rs3=st.executeQuery("select teachingq from teaching_skill where teaching_ques_id=904");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   ResultSet rs4=st.executeQuery("select teachingskill_ans from teachingskill_ans where teaching_skill_ques_id=904");
                while(rs4.next()){%>
                <input type="checkbox" name="teaching_ans4">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
				%></div><div class="panel-footer"><a href="TeachingSkills1.jsp"><input type="button" class="btn btn-danger" value="Previous" style="float:left;"></a></div>
                    </div></div>
           <div class="col-xs-6 col-xs-offset-4">
                 <div class="panel panel-primary" style="float:right;min-height:600px;min-width:600px;position:relative;margin-bottom:20px;margin-left:150px;margin-right:20px;border:5px groove lightblue;
box-shadow:5px 5px 0px -2px rgba(0,0,0,0.5);">
                    <div class="panel-heading" style="height:100px;width:400px;background-color:blue;color:#ffffff;">[Continued after Q.8]<img src="images/AI11.png"/></div>
                           <div class="panel-body" style="text-align:left;"><% 
                               ResultSet rs10=null;
                                rs2=null;
                                rs3=null;
                                rs4=null;
                       %>         
				<p>Q.5)Predict inked</p><img src="images/InkedTS3_LI.jpg"/><br/>               <br/><br/>
                            
                  <%  rs2=st.executeQuery("select teachingskill_ans from teachingskill_ans where teaching_skill_ques_id=905");
                 while(rs2.next()){%>
                <input type="checkbox" name="teaching_ans5"><%%>
                <%out.println(rs2.getString(1));
                %><br/>
                   <% }
                rs3=st.executeQuery("select teachingq from teaching_skill where teaching_ques_id=906");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   rs4=st.executeQuery("select teachingskill_ans from teachingskill_ans where teaching_skill_ques_id=906");
                while(rs4.next()){%>
                <input type="checkbox" name="teaching_ans6">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
%>   </div>          
                <br/>
   <div class="panel-footer">
                <a href="TeachingSkills3.jsp"><input type="submit" class="btn btn-primary" value="Save and Next" style="float:right;"/></a></div>
 </div></div></div></form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>