<%@page import="java.sql.*" %>
<%
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement stmt=conn1.createStatement();%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Institute Login</title>
<style>
.container-fluid{ min-height:660px;
 min-width:900px;
background-image: url("images/iqlogo.png");
}
.panel{
min-height:500px; 
min-width:620px;
left:40%;
text-align:center;
position:absolute;
padding-top:0px;
background-image:url("images/loginbackground.jpg");
}
.panel-heading{ 
height:100px;
padding:20px;
background-color:rgba(128,128,0,1);
}
.panel-footer{ height:100[px; background-color:#ffcccc;
}
a:hover,a:focus{ border:1px solid black ; 
background-color:red; color:ffffff;
font-size:36px; transform:perspective(4.5cm) ;
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
input{
width:200px;
height:100px;
display:block;
border:none;

}
</style>
</head>
<body>
<div class="container-fluid">
<div class="col-xs-6 col-xs-offset-2">
<form name="loginuser" method="POST" action="verify.jsp">
<div class="row text-center">
<div class="panel"><div class="panel-heading" style="backgroundcolor:beige;"><h2>**Institute SignIn**</h2>
</div>
<div class="panel-body"><h6>Enter Username:<input type="email" placeholder="email address" name="institute_email" required/></h6><br/><br/><br/>
<h6>Enter Password:<input type="password" placeholder="registeredpassword" name="institute_password" required/></h6><br/><br/><br/><input type="checkbox"id="save"name="rem_me"/>Remember Me?&nbsp;&nbsp;<a href="Changepassword.jsp">Forgot password?</a></div><br/><br/>
<div class="panel-footer">
<input type="submit" id="verify" value="SignIn" class="btn btn-danger"/>&nbsp;&nbsp;&nbsp;&nbsp;<a href="UserSignUp.jsp">New User?Create Account</a></div>
</div></div>
</form>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>