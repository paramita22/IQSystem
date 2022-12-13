<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>generateGeneral GradeCard</title>
<style>
.container-fluid{
height:200px;
width:800px;
}
</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<div class="row text-center">
<form action="GeneralIQgradecard.jsp" method="GET">
<input type="number" name="userid">==Give Registration No.<br/>
<input type="number" name="iqexamcode">==Give Exam Code<br/>
<input type="submit" value="Get General grade card"/>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
ResultSet rs=st.executeQuery("select userid,iqexamcode from general_gradecard_generation");
while(rs.next()){%>
<%if(Integer.parseInt(request.getParameter("userid"))==(rs.getInt(1))&&Integer.parseInt(request.getParameter("iqexamcode"))==(rs.getInt(2)))
{
response.sendRedirect("GeneralIQgradecard.jsp");
		}else{out.println("Gradecard not Found");
} 
}%></form>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>