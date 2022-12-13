<%@page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr"); 
Statement st=conn1.createStatement();
boolean flag=false;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FinancialSkill2 # IQSystem</title>
<style>
.container-fluid{
height:700px;
width:900px;
}
#clock{
height:50px;
width:200px;
text-align:center;
background-color:#000000;
color:#ffffff;
font-size:20px;
}
panel{
min-height:400px;
min-width:400px;
margin-bottom:20px;
margin-left:20px;
margin-right:20px;
padding-top:0px;
box-shadow:5px 5px 0px -2px rgba(0,0,0,0.5);
}
</style>
<script>
function message(){
    alert("You cant check more than 1 checkbox.Multiple selection will be considered null")
}
document.querySelectorAll(".cgroup").forEach((chbx)=>{
    chbx.addEventListener("change",(e)=>{
        if(!e.target.checked) return;
        var checkedbox = Array.from(document.querySelectorAll(".cgroup")).find(chbx=>chbx!=e.target&&chbx.checked);
        if(checkedbox>1){
            e.target.checked = false;
            message()
        }
    })
})
</script>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<form name="financialskill" method="GET" action="/Servlet8">

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

</script></div></div><br/>[Continued after Q.2 in FINANCIAL SKILL]</div>
                    <div class="panel-body" style="text-align:left;">
                 <%  ResultSet rs1=st.executeQuery("select financial_ques from financial_skill where financial_quesid=413");
                %><br/><br/>
                
                
                <%
                while(rs1.next()){
                out.println(rs1.getString(1));
                    }%>
               <br/><br/>
                          
                  <%  ResultSet rs2=st.executeQuery("select financial_ans from financial_skill_ans where financial_quesid=413");
                 while(rs2.next()){
                 %>
                 <input type="checkbox" name="financial_ansid">
                 <%
                   
                  out.println(rs2.getString(1));
                 %><br/>
                  
                <%}
               
                %>
                  <br/>
              <%  ResultSet rs3=st.executeQuery("select financial_ques from financial_skill where financial_quesid=414");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   ResultSet rs4=st.executeQuery("select financial_ans from financial_skill_ans where financial_quesid=414");
                while(rs4.next()){%>
                <input type="checkbox" name="managementr_ansid">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
              
                    %>
</div><br/><div class="panel-footer"><a href="FinancialSkills1.jsp"><input type="button" class="btn btn-danger" value="Previous" style="float:left;"></a></div>
                    </div></div>
            <div class="col-xs-6 col-xs-offset-4">
                 <div class="panel panel-primary" style="float:right;min-height:600px;min-width:600px;position:relative;margin-bottom:20px;margin-left:150px;margin-right:20px;border:5px groove lightblue;
box-shadow:5px 5px 0px -2px rgba(0,0,0,0.5);">
                    <div class="panel-heading" style="height:100px;width:400px;background-color:blue;color:#ffffff;">[Continued after Q.8]<img src="images/AI11.png"/></div>                         
                      <div class="panel-body" style="text-align:left;"><% 
                               rs1=null;
                                rs2=null;
                                rs3=null;
                                rs4=null;
                       %>         
                <%rs1=st.executeQuery("select financial_ques from financial_skill where financial_quesid=415"); 
                while(rs1.next()){
                out.println(rs1.getString(1));}%>
               <br/><br/>
                            
                  <%  rs2=st.executeQuery("select financial_ans from financial_skill_ans where financial_quesid=415");
                 while(rs2.next()){%>
                <input type="checkbox" name="financial_ansid"><%%>
                <%out.println(rs2.getString(1));
                %><br/>
                   <% }
                 
                     
                rs3=st.executeQuery("select financial_ques from financial_skill where financial_quesid=416");
                %><br/><br/>
                
                
                <%
                while(rs3.next()){
                out.println(rs3.getString(1));
                    }%>
                <br/><br/>
                           
                  <%   rs4=st.executeQuery("select financial_ans from financial_skill_ans where financial_quesid=416");
                while(rs4.next()){%>
                <input type="checkbox" name="financial_ansid">
               <% out.println(rs4.getString(1));%><br/>
                   <% }
              
                    %>
   </div>          
                <br/>
           
                
                <div class="panel-footer">
                <a href="FinancialSkill3.jsp"><input type="button" class="btn btn-primary" value="Save and Next" style="float:right;"/></a></div>
</div></div></form></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>