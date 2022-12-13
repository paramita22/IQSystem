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
<title>Series12 # IQSystem</title>
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
<form name="GTpatterns" method="POST" onsubmit="checkPattern();">
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
</span><br/><br/> <div class="row text-center">
            <div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">[Continued after Q.2]</div>
                    <div class="panel-body" style="text-align:left;">
                <% 
                ResultSet rs1=st.executeQuery("select seies_ques from series where seriesid=203");
                %>
                <%
                while(rs1.next()){
                out.println(rs1.getString(1));
                    }%>
               <br/>
                            
                  <%  ResultSet rs2=st.executeQuery("select series_ans from series_ans where series_ques_id=203");
                 while(rs2.next()){
                 %>
                 <input type="checkbox" name="series_ans3">
                 <%
                   
                  out.println(rs2.getString(1));
                 %><br/>
                  
                <%}%>
                  <br/>
              <%  ResultSet rs3=st.executeQuery("select seies_ques from series where seriesid=204");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   ResultSet rs4=st.executeQuery("select series_ans from series_ans where series_ques_id=204");
                while(rs4.next()){%>
                <input type="checkbox" name="series_ans4">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
%> </div><div class="panel-footer"><a href="series11.jsp"><input type="button" class="btn btn-danger" value="Previous" style="float:left;"></a></div>
                    </div></div>
            
            <div class="col-xs-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">[Continued after Q.4]</div>
                           <div class="panel-body" style="text-align:left;"><% 
                                rs1=null;
                                rs2=null;
                                rs3=null;
                                rs4=null;
                                
                rs1=st.executeQuery("select seies_ques from series where seriesid=205");
                %>
                <%
                while(rs1.next()){
                out.println(rs1.getString(1));
                    }%>
               <br/><br/>
                            
                  <%  rs2=st.executeQuery("select series_ans from series_ans where series_ques_id=205");
                 while(rs2.next()){%>
                <input type="checkbox" name="series_ans5"><%%>
                <%out.println(rs2.getString(1));
                %><br/>
                   <% }
                rs3=st.executeQuery("select seies_ques from series where seriesid=206");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   rs4=st.executeQuery("select series_ans from series_ans where series_ques_id=206");
                while(rs4.next()){%>
                <input type="checkbox" name="series_ans6">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
%>   </div>          
                <br/>
           
                
                </div></div>
                <a href="series13.jsp"><input type="submit" class="btn btn-primary" value="Save and Next" style="float:right;"/></a></div>
</div></form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>