<%@page import="java.sql.*" %>
<%@page import="jakarta.servlet.RequestDispatcher" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<% Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
%>
<meta charset="ISO-8859-1">
<title>Payment Receipt # IQs</title>
<style>
table{
height:400px;
width:400px;
border:5px solid red;
align:center;
}
td{
border:5px solid red;
font-size:18px;
}
input{
text-align:left;
padding:20px;
margin:10px;
}

</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<div class="col-xs-4">
<table>

<tr><td>Name of Account Holder: </td><td>Pandora Parish</td></tr>
<tr><td>Amount Paid : </td><td>300</td></tr>
<tr><td>For a Registration of: </td><td>Customised Test</td></tr>

<tr><td>Test 1:</td><td>Managerial Skills</td></tr>
<tr><td>Test 2:</td><td>Financial Skills</td></tr>
<tr><td><input type="button" value="Download Receipt here" onclick="$('a#someID').attr({target: '_blank', 
    href  : 'http://localhost/directory/file.pdf'});"/></td></tr>
</table></div>
<div class="col-xs-2 col-xs-offset-2">
<a href="UserProfile1.jsp"><input type="button" value="PROCEED TO PROFILE"><i class="fa fa-arrow-right"></i></a></div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>