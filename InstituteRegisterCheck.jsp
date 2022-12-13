<%@page import="java.sql.*"%>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
int c=0;
ResultSet rs=st.executeQuery("select max(instituteid) from institutes");
while(rs.next()){
c=rs.getInt(1)+1;
}
String s1="select institute_name from institutes";
String s2="select institute_email from institutes";
String s3="select institute_password from institutes";
String s4="select institute_phone from institutes";
%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Institute Register Check</title>
<script>
</script>
</head>
<body>
<form action="InstituteProfile.jsp"method="POST">
<%PreparedStatement ps=conn1.prepareStatement("insert into institutes(instituteid,institute_name,institute_email,institute_password,institute_phone,institute_address) values(?,?,?,?,?,?)") ;
ps.setString(1, "c");
ps.setString(2, request.getParameter("institute_name"));
ps.setString(3, request.getParameter("institute_email"));
ps.setString(4, request.getParameter("institute_password"));
ps.setString(5, request.getParameter("institute_phone"));
ps.setString(6, request.getParameter("institute_address"));
%>
</form>
<%
if(ps!=null){
response.sendRedirect("InstituteLogin.jsp");
}
%>
</body>
</html>