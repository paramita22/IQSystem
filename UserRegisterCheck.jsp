<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserRegisterCheck</title>
</head>
<body>
<% Connection conn1;
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
	int c=0,y;
	Statement st=conn1.createStatement();
	ResultSet rs2=st.executeQuery("select max(userid) from users");
	while(rs2.next()) {
		c=rs2.getInt(1)+1;
	}
	PreparedStatement ps=conn1.prepareStatement("insert into essentials(user_email,password) values(?,?)");
	ps.setString(1,request.getParameter("user_email"));
	ps.setString(2,request.getParameter("password"));
	ps.setInt(3,c);
	ps.executeUpdate();
	PreparedStatement ps1=conn1.prepareStatement("insert into users(userid,user_fname,user_lname,user_email,user_password,user_phone,user_address,user_setverification)values(?,?,?,?,?,?,?,?)") ;
	ps1.setString(1, "c");
	ps1.setString(2, request.getParameter("user_fname"));
	ps1.setString(3, request.getParameter("user_lname"));
	ps1.setString(4, request.getParameter("user_email"));
	ps1.setString(5, request.getParameter("user_password"));
	ps1.setString(6, request.getParameter("user_phone"));
	ps1.setString(7, request.getParameter("user_address"));
	ps1.setString(8, request.getParameter("user_setverification"));
	y=ps1.executeUpdate();
	if(y!=0) {
		response.sendRedirect("UserLogin.jsp");
	}
	}
	catch(Exception e) {
		out.println(e);
		}%>
</body>
</html>