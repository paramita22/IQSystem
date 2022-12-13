<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
HttpSession session1=request.getSession();
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
ResultSet rs1=null;
ResultSet rs2=null;
String user_grade="";
String msg="",msg1="";
String gc="";
int tot_mark1=12;
int tot_mark2=0;
int tot_mark3=0;
int tot_mark4=12;
int tot_mark5=0;
int tot_mark=tot_mark1+tot_mark2+tot_mark3+tot_mark4+tot_mark5;
int tot_marks=(tot_mark/40)*100;
if(tot_marks>=80){
			gc="A";
			out.println("GRADE: A");
		}
		
else if(tot_marks>=65&&tot_marks<80){
		gc="B";
		out.println("GRADE: B");
		
}
else if(tot_marks>50&&tot_marks<65){
		gc="C";
		out.println("GRADE: C");
}
else if(tot_marks>30&&tot_marks<50){
		gc="D";
		out.println("GRADE: D");
		}


if(tot_mark1>=18){
msg="Comprehending Ability is Excellent";
}
else if(tot_mark1>=10&&tot_mark1<=15){
	msg1="Comprehending Ability is Good";
}
else if(tot_mark1<=2){
	msg1="Comprehending Inability";
}
else{
	msg1="Comprehending Ability is Fair";
}

if(tot_mark1>=15&&tot_mark2>=15){
msg="Judgemental Ability is Excellent";
}
else if(tot_mark1>=10&&tot_mark2<=10){
	msg="Judgemental Ability is Good";
}
else if(tot_mark1<=2||tot_mark2<=2){
	msg="Judgemental Inability";
}
else{
	msg="Judgemental Ability is Fair";
}
if(tot_mark1>=15){
msg="Literary Field may be pursued";
}
else if(tot_mark1>=10&&tot_mark2<=8||tot_mark3>=5){
	msg="Social Field may be pursued";
}
else if(tot_mark1<=2||tot_mark3<=2||tot_mark4<=2){
	msg="Working Skills suggersted";
}
else{
	msg="Industry Hands";
}

/*if(tot_mark2>=18&&tot_mark3>=10){
msg="Cognitive Ability is Excellent";
}
else if(tot_mark1>=10&&tot_mark1<=15){
	msg="Cognitive Ability is Good";
}
else if(tot_mark2<=2&&tot_mark3<=2||tot_mark4<=2){
	msg="Cognitive Inability";
}
else{
	msg="Cognitive Ability is Fair";
}*/
if(tot_mark1>=10&&tot_mark1<=15){
msg="Calculative Ability is Good\nDecision Making Ability is Good";
}
else if(tot_mark1<=5){
	msg="Calculative Inability\nDecision Making Inability";
}
else{
	msg="Calculative Ability is Fair";
}
if(tot_mark1>=15&&tot_mark4>=10){
msg="Research and Foreign Affairs Suggested";
}
else if(tot_mark1>=10&&tot_mark4<=10){
msg="Development and education Suggested";
}
else if(tot_mark4<=5){
	msg="Finance is not suggested\nBusiness is not suggested";
}

 %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>GeneralIQgradecard</title>
<style>
th{
padding:50px;
border:2px solid blue;
}

</style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    </head>
<body>
<div class="container-fluid">
<img src="images/iqs.jpg">GRADE CARD FOR GENERAL TEST
<%rs1=st.executeQuery("select userid,user_fname,user_lname from users where userid=10225"); %>
<%while(rs1.next()) {%>
<h2>User Registration No.:<%out.println(rs1.getInt(1));%><br/>
User Name: <%out.println(rs1.getString(2)+"\t"+rs1.getString(3));}%>
</h2><div style="background-color:beige;width:200px;float:right;border:2px solid black;"><h4>User Grade:C <%out.println(gc);%></h4><br/><h4>User Score:24/40</h4></div><br/>
<table>
<th>User Score in Comprehension and language : <%=tot_mark1 %><br/>
User Score in Series Solving :NA</th><br/>
</th><th>User Score in Pattern Solving :<br/>
User Score in General Mathematics : <%=tot_mark4 %><br/>
User Score in Games:
</th>
<tr><td style="background-color:blue;color:#ffffff;"><h4>Strength</h4><br/>
<input type="checkbox" checked><%=msg %><br/>
<input type="checkbox" checked><%=msg1 %></td>
<td style="background-color:pink;color:#000000;"><h4>Weakness</h4><br/>
<input type="checkbox" checked>Judgemental improvement needed<br/>
<input type="checkbox" ><br/></td>
</tr>
<tr>
<td style="background-color:green;color:#ffffff;"><h4>Opportunity</h4>
<input type="checkbox" checked>Mathematics is a choice<br/>
<input type="checkbox"></td>
<td style="background-color:red;collor:#000000;"><h4>Threat</h4>
<input type="checkbox" checked>Time Management?<br/>
<input type="checkbox">
</tr></table>
<input type="button"  class="btn btn-primary" value="Download Gradecard" onclick="$('a#someID').attr({target: '_blank', 
                    href  : 'http://localhost/directory/file.pdf'});">
                    <a href="UserProfile2.jsp"><input type="button" class="btn btn-primary" value="Return to Profile" style="float:right;"></a><br/>
  <a href="UserLogout.jsp"><input type="button" class="btn btn-danger" value="LOGOUT" style="float:right;"></a>                  
                    </div>
</body>
</html>