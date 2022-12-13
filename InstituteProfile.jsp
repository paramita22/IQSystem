<%@page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
String email=(String)request.getAttribute("institute_email");
HttpSession session1=request.getSession();
Statement st=conn1.createStatement();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>user profile # IQSystem</title>
<style>
.container-fluid{
min-height:660px;
min-width:820px;
background-image:url("images/online5.jpg");
}
.panel{
min-height:600px;
min-width:790px;
}
a:hover,a:focus{
border:1px solid black;
background-color:red;
color:ffffff;
font-size:36px;
transform:perspective(5.5cm);
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
img:hover{
transform:skew(30deg,30deg);
}
table{
height:200px;
width:800px;
border:5px groove #9d9d9d;
}
td{
height:50px;
width:300px;
background-color:lightblue;
border:5px solid black;
font-color:#000000;
font-size:16px;
}
.card-wrapper{
positioin:absolute;
}

.card{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
width:200px;
height:200px;
border-radius:10px;
box-shadow:0 5px 10px rgba(0,0,0,0.6);
cursor:pointer;
transition:0.5s;
}
</style>
</head>
<body>
<div class="navbar navbar-default navbar-fixed-top" style="background-color:beige;box-shadow:-2px -2px 2px 2px rgba(0,0,128,2.5)">
<div class="container"><div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span></button></div>
<a class="navbar-brand">Test Your 4D</a>
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav navbar-right">
<li><a href="aboutus,html"><span class="glyphicon glyphicon-info-sign">AboutUs</span></a></li>
<li><a href="UserSignUp.jsp"><span class="glyphicon glyphicon-user">UserSignUp</span></a></li>
<li><a href="UserLogin.jsp"><span class="glyphicon glyphicon-log-in">UserLogin</span></a></li>
<li><a href="InstituteLogin.jsp"><span class="glyphicon glyphicon-home">InstituteLogin</span></a></li>
<li><a href="GeneralTest.jsp"><span class="glyphicon glyphicon-cog">CheckGeneralTest</span></a></li>
<li><a href="CustomisedTest.jsp"><span class="glyphicon glyphicon-star">CustomisedTest</span></a></li>
</ul>
</div></div></div><br/><br/><br/><br/><br/>

<div class="container-fluid">
<h2 style="color:#ffffff;border:5px groove #ffffff;box-shadow:0px 5px 5px rgba(0,0,0,2.5);">INSTITUTE PROFILE</h2>
<div class="col-xs-4">
<div class="card-wrapper"><div class="card"><div class="card-image"><img src="images/inst2.jpg" alt="institute"/></div>
<input type="button" value="Change/upload picture here"/></div></div>
</div><br/>
<%ResultSet rs=st.executeQuery("select * from institutes where instituteid=111287");  %>

<div class="col-xs-4 col-xs-offset-4">
<table style="top:150px;position:relative;">
<%while(rs.next()) {%>
<tr><h4><td>Registration No.:</td></h4><td><%out.println(rs.getInt(1));%></td></tr>
<tr>
<td>INSTITUTE  Name</td>
<td><%out.println(rs.getString(2));%></td>
</tr>
<tr>
<td>Mobile Number</td>
<td><%=rs.getString(5)%></td>
</tr>


<tr>
<td>Current Location</td>
<td><%=rs.getString(6)%></td>
</tr>
<tr>
<td>No. of users:</td>
<td><%=rs.getInt(10) %></td>
</tr>
<tr><td><input type="button" class="btn btn-primary" value="Download here" style="height:30px;width:150px;color:#000000;" "onclick="$('a#someID').attr({target: '_blank', 
    href  : 'http://localhost/directory/file.pdf'});"/></td><td><input type="button" class="btn btn-primary" value="Update Profile" style="height:30px;width:150px;color:#000000;"/></td></tr>
</table>
<%
}
%>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>