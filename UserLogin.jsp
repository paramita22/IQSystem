<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement stmt=conn1.createStatement();
String s1="",s2="";%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel="stylesheet" href="style.css"/>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width initial-scale=1">
<title>UserLogin @ IQSystem</title>
<style>
.container-fluid{ min-height:660px;
 min-width:900px;
background-image: url("images/iqlogo.png");
}
.panel{
min-height:500px; 
min-width:620px;
left:40%;
align:center;
position:absolute;
padding-top:0px;
background-image:url("images/logo2.png");
}
.panel-heading{ height:100px;
background-color:rgba(128,0,0,8);
}
.panel-footer{ height:100[px; background-color:#ffcccc;
}
a:hover,a:focus{ border:1px solid black ; 
background-color:red; color:ffffff;
font-size:36px; transform:perspective(4.5cm) ;
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
</style>
<script>
function verify(){
var verification=document.getElementById("verify").innerHTML;
if(verification=="dfg"){
	alert("Welcome");
	}
else{
	alert("You have entered wrong credentials");
}
}

</script>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include><br/><br/><br/>
<div class="container-fluid">
<div class="row text-center">
<form name="loginuser" method="POST" action="verify.jsp">
<div class="panel panel-primary"><div class="panel-heading"><h4 style="color:#ffffff;"><b>**&nbsp;&nbsp;User Sign In&nbsp;&nbsp;**</b></h4>
</div>
<div class="panel-body" style="padding-top:30px;padding-bottom:30px;">
Enter Username :&nbsp;&nbsp;<input type="email" placeholder="email address" id="ename" name="user_email"required/><br/><br/><br/>
Enter  Password :&nbsp;&nbsp;<input type="password" placeholder="registered password" id="pass" name="user_password" required/><br/><br/><br/><input type="checkbox" id="save" name="rem_me"/>Remember Me?&nbsp;&nbsp;<a href="Changepassword.jsp">Forgot password?</a></div><br/><br/>
<div class="panel-footer"><a href="verify.jsp"><input type="submit" value="SignIn" class="btn btn-danger" style="height:50px;width:150px;"/></a>
<button type="button" onclick="verify();"></button>
<a href="UserSignUp.jsp">New User? Create Account</a></div>
</div></form>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body></html>


