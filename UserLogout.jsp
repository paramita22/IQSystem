<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
HttpSession session1=request.getSession(true);Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
PreparedStatement pst=conn1.prepareStatement("insert into users(feedback) values(?)");%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel="stylesheet" href="style.css"/>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width initial-scale=1">
<meta charset="ISO-8859-1">
<title>Thank You User</title>
<style>
.container-fluid{
height:680px;
width:auto;
background-image:url("images/iq2.png");
}
form{
height:500px;
width:700px;
margin-right:400px;
background-color:aliceblue;
position:absolute;
}
</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<form method="post" action="index.jsp">
<img src="images/logoiq1.jpg"/><br/>
Rate Customised Test:<input type="radio" name="gt">Exciting&nbsp;&nbsp;<input type="radio" name="gt"/>Good&nbsp;&nbsp;<input type="radio" name="gt"/>Not Satisfied<br/><br/>
Rate General Test:<input type="radio" name="ct">Exciting&nbsp;&nbsp;<input type="radio" name="ct"/>Good&nbsp;&nbsp;<input type="radio" name="ct"/>Not Satisfied<br/><br/>
Please Give Feedback:<textarea name="feedback"></textarea><%pst.setString(1,request.getParameter("feedback"));%><br/><br/>
<a href="index.jsp"><input type="submit" onsubmit="<%session1.invalidate();%>" value="PLeaseLogOut" class="btn btn-danger" style="height:50px;width:150px;float:right;border:none;box-shadow:5px 5px 0px -2px rgba(0,0,0,1.5);"/></a></form>
<img src="images/thankYou.jpg" alt="thank You" width=400 height=400 style="float:right;box-shadow:0px 5px 10px 10px rgba(0,0,0,1.5);"/></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>