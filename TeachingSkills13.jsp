<%@page import="java.sql.*" %>
<%HttpSession session1=request.getSession();
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr"); 
Statement st=conn1.createStatement();
String userid=(String)session1.getAttribute("userid");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TeachingSkill3 # IQsystem</title>
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

</script></div></div><br/>[Continued after Q.6 in BUSINESS SKILL]</div>
                    <div class="panel-body" style="text-align:left;">
                <% 
                ResultSet rs1=st.executeQuery("select teachingq from teaching_skill where teaching_ques_id=907");
                %>
                <%
                while(rs1.next()){
                out.println(rs1.getString(1));
                    }%><img src="images/TS5.jpg"/>
               <br/>
                            
                   <input type="checkbox" name="businessl_ans7">A. Pandemic<br/>
               <input type="checkbox" name="business_ans7">B. Patience<br/>
               <input type="checkbox" name="business_ans7">C. Perish<br/>
               <input type="checkbox" name="business_ans7">D. Pervert out<br/><br/>
                <%ResultSet rs3=st.executeQuery("select teachingq from teaching_skill where teaching_ques_id=908");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <input type="checkbox" name="businessl_ans7">A. Vandalisme<br/>
               <input type="checkbox" name="business_ans7">B. Take risk and be Creative<br/>
               <input type="checkbox" name="business_ans7">C. Saving time<br/>
               <input type="checkbox" name="business_ans7">D. Running out<br/><br/>
%> </div><div class="panel=footer"> <a href="TeachingSkills12.jsp"><input type="button" value="previous" class="btn btn-danger" style="float:left;"></a></div>
                    </div></div>
            
            <div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">[Continued after Q.8]</div>
                           <div class="panel-body" style="text-align:left;"><% 
                                rs1=null;
                                ResultSet rs2=null;
                                rs3=null;
                                ResultSet rs4=null;
                                
                rs1=st.executeQuery("select teachingq from teaching_skill where teaching_ques_id=909");
                %>
                <%
                while(rs1.next()){
                out.println(rs1.getString(1));
                    }%><img src="images/InkedTS4_LI.jpg"/>
               <br/>
                            
 <input type="checkbox" name="businessl_ans7">A. Judgement<br/>
               <input type="checkbox" name="business_ans7">B. Patience<br/>
               <input type="checkbox" name="business_ans7">C. Critical Thinking<br/>
               <input type="checkbox" name="business_ans7">D. Belief<br/><br/>                
               <%rs3=st.executeQuery("select teachingq from teaching_skill where teaching_ques_id=910");
                %><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
 <input type="checkbox" name="businessl_ans7">A. Time<br/>
               <input type="checkbox" name="business_ans7">B. Digitisation<br/>
               <input type="checkbox" name="business_ans7">C. Studies<br/>
               <input type="checkbox" name="business_ans7">D. Cocurricular<br/><br/>                  </div>          
                <br/>
                              
                </div>
       <div class="panel-footer">
       
                <a href="GeneralIQgradecard.jsp"><input type="submit" class="btn btn-primary" value="Submit and GetResult" onclick="alert('Do You Really want to submit?');" style="float:right;"/></a></div>
</div></div></form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>