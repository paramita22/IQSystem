<%@page import="java.sql.*"%>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");%>
<!DOCTYPEhtml>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel="stylesheet" href="style.css"/>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width initial-scale=1">
<title>instituteSignUp # IQSystem</title>
<style>
.container-fluid{ 
min-height:auto; 
min-width:800px;
background-image: url("images/logoiq.jpg");
}

a:hover,a:focus{ 
border:1px solid black ; 
background-color:red;
color:ffffff; font-size:36px;
transform:perspective(5.5cm) ;
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
table{ 
height:500px; 
width:800px;
background-color:#ffccff; 
border:5px solid black ;
margin-bottom:200px;
margin-left:600px;
}
td{
border:2px solid #9d9d9d;
}
th{
border:2px solid black ;
}
input{ 
height:30px; 
width:300px;
}
</style>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
<br/><br/><br/>
<div class="container-fluid">
<div class="row text-center">
<div class="col-xs-4  col-xs-offset-2">
<form name="InstituteRegister" method="POST" action="InstRegisterCheck.jsp">
<table>
<tr><th><img src="images/iqs.jpg"></th><th><h2>INSTITUTE  SIGN  UP</h2></th></tr>
<tr><td>INSTITUTE
NAME</td><td><input type="text" name="institutename" placeholder="last name"/></td></tr>

 
<tr><td>INSTITUTE
EMAIL</td><td><input type="email" name="institute_email" placeholder="email"required/></td></tr>
<tr><td>INSTITUTE
PASSWORD</td><td><input type="password" name="institute_password" placeholder="password"  required/></td></tr>
<tr><td>INSTITUTE
ADDRESS</td><td><input type="text"name="institute_address1"  placeholder="address"><br/>
<input type="text"name="user_address2" /></td></tr>
<tr><td>INSTITUTE
PHONE</td><td><input type="number" name="institute_phone" placeholder="phone/mobile no."/></td></tr>
<tr><td><input type="button" value="Refresh" class="btnbtn-lg-
active"onclick="<scrip>window.onload=window.reset(); </script>"></td><td><a href="InstituteRegisterCheck.jsp">
<input type="submit" value="Sign  up" class="btnbtn-primary"></a><td></td></tr>
</table>
</form></div></div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
