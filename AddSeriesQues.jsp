<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head><% 
Scanner sc=new Scanner(System.in);
Connection conn1=null;
Statement st=null;
PreparedStatement ps=null;
ResultSet rs1=null;
ResultSet rs2=null;
int seriesid=0,iqexamcode=12,correct_ansid;
String series_ques;
boolean choice=false;
int x=0,y;%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<%try {
	Class.forName("oracle.jdbc.OracleDriver");
	conn1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1", "hr","hr");%>
	<%if(conn1!=null) {
	out.println("Connection success");
	}
	else {
	out.println("Connection Failure");
	}%>
	<form>
	<table style='background-color:beige;'>
	<%st=conn1.createStatement();
	}
	catch(Exception e) {
	out.println(e);
	}
	try {
		do {
	rs1=st.executeQuery("select max(seriesid) from series");%>
	<tr><td>
	<%while(rs1.next()) {%>
	Series_ques_no.: </td><td>
	<%x=(rs1.getInt(1)+1);
	}%>
	</td></tr>
	<%ps = conn1.prepareStatement("insert into series values(?,?,?,?)");%>
	<tr><td>Series Ques ID</td><td>
	<%ps.setInt(1, x);%>
	</td></tr>
	<tr><td>SeriesQues. : </td><td>
	<%series_ques=sc.next();
	ps.setString(2, series_ques);%>
	</td></tr><tr><td>iqexamcode</td><td>
	<%ps.setInt(3, iqexamcode);%>
	</td></tr>
	<tr><td>Correct_ansID</td><td>
	<%out.println("\tEnter correct_ansid : ");
	correct_ansid=sc.nextInt();
	ps.setInt(4, correct_ansid);%>
	</td></tr></table>
	<h6>Do You want to enter more Questions?\tEnter true/false=></h6>
	<%choice=sc.nextBoolean();
		}while(choice==true);
		sc.close();
	}
		catch(Exception e){
		}
		finally{
			y=ps.executeUpdate();
		}%>
		</form>
	<%if(y>0) {
	out.println("Data inserted successfully");
	}
	else{
		out.println("Data insertion failed");
	rs2=st.executeQuery("select * from series");
	out.println("SeriesID\tSeriesQues\tiqexamcode\tCorrectQuesID");
	while(rs2.next()) {
	out.print(rs2.getInt(1)+"\t");
	out.println(rs2.getString(2)+"\t");
	out.println(rs2.getInt(3)+"\t");
	out.println(rs2.getInt(4));
	out.println();
	}
	}
%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>