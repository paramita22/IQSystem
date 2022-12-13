<%@page import="java.sql.*"%>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
HttpSession session1=request.getSession();
Statement st=conn1.createStatement();
int userid=10225;
%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user profile # IQSystem</title>
<style>
.container-fluid{
min-height:500px;
min-width:800px;
}
a:hover,a:focus{
border:1px solid black;
background-color:red;
color:ffffff;
font-size:36px;
transform:perspective(5.5cm);
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
img:hover{
transform:skew(30deg,30deg);
}
table{
height:400px;
width:800px;
cell-spacing:5px;
cell-padding:5px;
border:5px groove #ffffff;
margin-left:500px;
margin-top:0px;
positon:relative;
}
td{
height:50px;
width:250px;
background-color:aliceblue;
border:5px;
font-color:#000000;
font-size:16px;
}
.card-wrapper{
positioin:absolute;
}
.card{
position:absolute;
top:200px;
left:10%;
transform:translate(-50%,-50%);
width:200px;
height:200px;
border-radius:10px;
box-shadow:0 5px 10px rgba(0,0,0,0.6);
cursor:pointer;
transition:0.5s;
}
</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<h2 style="text-align:center;background-color:green;color:#ffffff;"><b>USER PROFILE</b></h2>
<div class="col-xs-4">
<div class="card-wrapper"><div class="card"><div class="card-image"><img src="images/profile1.jpg" alt="#" height=300 width=200/></div>
<input type="button" value="Change/upload picture here"/></div></div>
</div>
<div class="col-xs-4 col-xs-offset-4"><ul style="margin-top:-100px;float:right;">
<i class="fa fa-user"><a href="StartGeneralTest.jsp">Start General Test</a></i>
<i class="fa fa-briefcase"><a href="PaymentPortal.jsp">Go To Payment</a></i>
<i class="fa fa-lock"><a href="StartCustomisedTest.jsp">Start Customised Test</a></i></ul>
<table style="top:-300px;">
<%ResultSet rs=st.executeQuery("select * from users where userid="+userid);
while(rs.next()){%>
<tr><td><h4>Registration No.:</h4></td><td><%=rs.getInt(1) %></td></tr>
<tr>
<td>Profile Name</td>
<td><%out.println(rs.getString(2)+"\t"+rs.getString(3)); %></td>
</tr>
<tr>
<td>Email Id</td>
<td><%out.println(rs.getString(4)); %></td>
</tr>
<tr>
<td>Mobile Number</td>
<td><%out.println(rs.getString(6));%></td>
</tr>
<tr>
<td>Current Location</td>
<td><%out.println(rs.getString(7));} %></td>
</tr>
<tr><td><input type="button" class="btn btn-primary" value="Download here" style="height:30px;width:150px;color:#000000;" onclick="$('a#someID').attr({target: '_blank',
href :'http://localhost/directory/file.pdf'});"/><br/><br/><a href="generateGeneralGC.jsp"><input type="submit"value="getGeneralGradeCard" class="btn btn-primary"/></a></td>
<td><input type="button" class="btn btn-primary" value="UpdateProfile" style="height:30px;width:150px;color:#000000;"/><br/>
<br/><a href="CustomisedIQgradecard.jsp"><input type="submit"value="Get CustomisedGradeCard"class="btn btn-danger"/></a></td>
</tr>
</table>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>