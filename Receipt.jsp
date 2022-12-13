<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% Connection conn1=null;
		Class.forName("oracle.jdbc.OracleDriver");
		conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
	Statement st=conn1.createStatement();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Receipt</title>
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
cell-spacing:10px;
cell-padding:5px;
background-color:#ccffff;
border:5px solid black;
box-shadow:10px 10px 0px -2px rgba(128,0,0,2.5);
}
td{
height:100px;
width:300px;
border:5px groove #9d9d9d;
}
th{
text-align:center;
border:2px solid black;
}
input{
height:50px;
width:300px;
}
</style>
<script>
	

</script>
</head>
<body>
	<jsp:include page="header2.jsp"></jsp:include>
	Enter userID=<input type="number" placeholder="userid/instituteid">
	<form name="receipt">
	<%int c1=Integer.parseInt(request.getParameter("userid"));
	ResultSet rs1=st.executeQuery("select userid from users");
	while(rs1.next()) {
		if(c1==rs1.getInt(1)){
			 %>
	<table>
	<tr><td>User Name:   </td><td><%=rs1.getString(2)+"\t"+rs1.getString(3)%></td></tr>
	<tr><td>User Email:  </td><td><%=rs1.getString(4) %></td></tr>
	</table>
	<%}}%></form><br/><br/><br/>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>