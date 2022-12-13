<%@page import="java.sql.*"%>
<%HttpSession session1=request.getSession();
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
ResultSet rs=st.executeQuery("select userid from users");
int c=0;
while(rs.next()) {
	c=rs.getInt(1)+1;
}
PreparedStatement pst=conn1.prepareStatement("insert into users values(?,?,?,?,?,?,?,?)");
pst.setInt(1, c);
pst.setString(2, request.getParameter("user_fname"));
pst.setString(3, request.getParameter("user_lname"));
pst.setString(4, request.getParameter("user_email"));
pst.setString(5,request.getParameter("user_password"));
pst.setString(6, request.getParameter("user_address"));
pst.setString(7, request.getParameter("user_phone"));
pst.setString(8, request.getParameter("user_setverification"));
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"  ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<style>
.container-fluid{
min-height:auto;
min-width:800px;
background-image:url("images/iqlogo.png");
}
a:hover a:focus{
border:2px solid black;
background-color:red;
color:#ffffff;
font-size:36px;
transform:perspective(5.5cm);
box-shadow:5px 5px 0px -2px rgba(128,0,128,2.5);
}
table{
height:500px;
width:800px;
margin:auto;
align:center;
background-color:#ccffff;
border:5px solid black;
box-shadow:10px 10px 0px -2px rgba(128,0,0,2.5);
}
td{
border:2px groove #9d9d9d;
}
th{
text-align:center;
border:2px solid black;
}
input{
height:50px;
width:300px;
}
#usersignupcheck:hover{
background-color:#ffffcc;
}
 #usersignupcheck:visited{
background-color:green;
}
</style>
<title>UserSignUp</title>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
<br/><br/><br/>
<div class="container-fluid">
<div class="row text-center">
<div class="col-xs-4 col-xs-offset-2">
<form name="registeruser" method="POST" action="UserLogin.jsp">
<table>
<tr><th><img src="images/iqs.jpg"></th><th><h2>USER SIGN UP</h2><%=c %><h6></h6></th></tr>
<tr><td>USER FIRST NAME</td><td><input type="text" name="ufname" placeholder="first name" required></td></tr>
<tr><td>USER LAST NAME</td><td><input type="text" name="ulname"  placeholder="last name"/></td></tr>
<tr><td>USER EMAIL</td><td><input type="email" name="user_email" placeholder="email" required/></td></tr>
<tr><td>USER PASSWORD</td><td><input type="password" name="user_password" placeholder="password"required/></td></tr>
<tr><td>USER ADDRESS</td><td><input type="text" name="user_address1" placeholder="address"><br/><input type="text" name="user_address2"/></td></tr>
<tr><td>USER PHONE</td><td><input type="number" name="user_phone" placeholder="phone/mobile no."/></td></tr>
<tr><td>SET VERIFICATION</td><td><input type="text" name="user_setverification" placeholder="type Y/N" required/></td></tr>
<tr><td><input type="button" value="Refresh" class="btn btn-lg-active" style="background-color:blue;"
onclick="<script>window.location.onload();</script>"/></td>
<td><a href="UserLogin.jsp"><input type="submit" value="Sign up"></a><td></td></tr>
</table></form>
</div></div></div><br/><br/>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>