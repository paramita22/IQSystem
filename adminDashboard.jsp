<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@ page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<%Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
int c;
Statement st=conn1.createStatement();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel="stylesheet" href="style.css"/>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width initial-scale=1">
<style>
.container-fluid{
min-height:750px;
min-width:800px;
background-image: url("images/iqlogo.png");
}
.navbar-item{
padding-right:50px;
}
a:hover,a:focus{
border:1px solid black;
background-color:red;
color:ffffff;
font-size:36px;
transform:perspective(5.5cm);
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
table{
height:600px;;
width:900px;
position:absolute;
margin-top:0px;
float:right;
margin-left:400px;
border-radius:15px;
padding-bottom:10px;
background:none;
}
td{
width:400px;
height:100px;
position:relative;
text-align:center;
border-radius:15px;
cell-padding:10px;
cell-spacing:20px;
background-color:aliceblue;
box-shadow:10px 10px 0px -5px rgba(0,0,0,1.5);
}
dropbtn{
	width:50px;
	height:50px;
	background-color:blue;
	color:#000000;
	padding:16px;
	font-size:12px;
	border:none;.
	}
	.dropdown{
	position:relative;
	display:inline-block;
	}
	.dropdown-content{
	display:none;
	background-color:#ffffff;
	position:absolute;
	min-width:200px;
	box-shadow:0px 8px 16px 0px rgba(128,0,128,2.5);
	z-index:1;
	padding:12px;
	margin:5px;
	}
	.dropdown-content:focus{
	color:black;
	padding:10px 12x;
	display:block;
	margin-left:100px;
	width:300px;
	}
	.dropdown-content:hover{
	width:300px;
	background-color:#1b1b1b;
	margin-left:100px;
	}
	.dropdown:hover .dropdown-content{
	display:block;
	width:300px;
	}
	.dropdown:hover .dropbtn{
	background-color:beige;
	font-size:16px;
	}
#delay{
height:100px;
width:200px;
align:center;
font-size:12px;
background-color:red;
display:block;
margin-left:0px;
margin-top:0px;
padding-top:30px;
border-radius:25px;
transition:width 2s,height 2s,background-color 2s,transform 2s;
}
#delay:hover{
height:200px;
width:200px;
font-size:36px;
background-color:#ffcccc;
transform:perspective(6.5cm);
}
</style>
<title>Admin_dashboard @ IQSystem</title>
</head>
<body>
<div class="navbar navbar-expand-sm navbar-fixed-top">
<div class="container"><div class="navbar-header">
<a class="navbar-brand" href="index.jsp" style="color:blue;font-weight:bold;box-shadow:-2px 10px 10px 0px rgba(0,0,128,2.5);"><b>Test Your 4D</b></a>
<audio src="images/IQPOWER.mp3" loop="loop"></audio>
<span id="Today" style="width:400px;height:80px;background-color:#000000;color:#ffffff;"><script>
var today=new Date();
document.getElementById("Today").innerHTML=today;
</script><img src="images/AI11.png"/></span>
<h4>ADMIN DASHBOARD</h4>
<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#MyNavbar" aria-expande=false aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button></div>
<div class="collapse navbar-collapse">
<ul class="navbar-nav">
<li class="navbar-item"><a class="nav-link" href="AboutUs.jsp"><i class="fa fa-info" style="padding-left:150px;">AboutUs</i></a></li>
<li class="navbar-item"><a class="nav-link" href="Information.jsp"><i class="fa fa-tag">LearnMore</i></a></li>
<li class="navbar-item"><a class="nav-link" href="Settings.jsp"><i class="fa fa-cog"></i>Settings</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-user-circle"></i>UserLogin</a></li>
<li class="navbar-item"><a class="nav-link" href="InstituteLogin.jsp"><i class="fa fa-university">InstituteLogin</i></a></li>
<li class="navbar-item"><a class="nav-link" href="#"><i class="fa fa-eye">IQ Systems & More...</i></a></li>
<li class="navbar-item"><a class="nav-link" href="#"><i class="fa fa-tty">Contact</i></a></li>
</ul></div></div></div>
<div class="container-fluid">
<div id="delay"><h4>TEST YOU IQ</h4></div>
<table>
<tr><td><h4>USER INFO</h4></td><td><h4>TEST INFO</h4></td></tr>
<tr><td><div class="dropdown"><button class="dropbtn"><h6>Check Registered Users</h6>
<ul class="dropdown-content"><%out.println("USERID\t\t\tUSER_NAME\t\t\tUSER_PHONE");%>
<%ResultSet rs1=st.executeQuery("select * from users");while(rs1.next()){%>
	<%out.print(rs1.getInt(1)+"\t\t");%>
	<%out.print(rs1.getString(2)+"\t\t");%>
	<%out.print(rs1.getString(3)+"\t\t");%>
	<%out.println(rs1.getString(6));%>
<%out.println();}
%></ul></button></div></td>
<td>
<div class="dropdown"><button class="dropbtn"><h6>Available General Tests</h6>
<ol class="dropdown-content">
<li><span class="glyphicon glyphicon-knight">Solve Comprehension & Language</span></li>
<li><span class="glyphicon glyphicon-pawn">Solve Series</span></li>
<li><span class="glyphicon glyphicon-bishop">Solve Patterns</span></li>
<li><span class="glyphicon glyphicon-queen">Solve General Mathematics</span></li>
<li><span class="glyphicon glyphicon-king">Play Games</span></li></ol></button></div></td></tr>
<tr>
<td><div class="dropdown"><button class="dropbtn"><h6>Check Registered Institutes</h6>
<ul class="dropdown-content" style="width:550px;"><%out.println("Instituteid\t\tInstitute_name\t\tInstitute_phone\t\tinst_accid"); %><br/>
<%ResultSet rs2=st.executeQuery("select * from institutes");while(rs2.next()){%>
	<%out.print(rs2.getInt(1)+"\t");%>
	<%out.print(rs2.getString(2)+"\t");%>
	<%out.print(rs2.getString(3)+"\t");%>
	<%out.print(rs2.getString(5)+"\t");%>
	<%out.print(rs2.getString(8)+"\t");%>
<%out.println();}%></ul></button></div></td>

<td><div class="dropdown"><button class="dropbtn"><h6>Available Customised Tests</h6>
<ul class="dropdown-content">
<a href="AddManagementQues"><li>MANAGERIAL SKILL</li></a>
<a href="AddBusinessQues"><li>BUSINESS SKILL</li></a>
<a href="AddFinancialQues"><li>FINANCIAL SKILL</li></a>
<a href="AddTeachingQues"><li>TEACHING SKILL</li></a>
<a href="AddSocialQues"><li>SOCIAL SKILL</li></a>
</ul></button></div></td></tr>
<tr>
<td><h6 style="height:80px;width:150px;margin-left:100px;background-color:#ffcccc;text-align:center;font-size:20px;border:2px solid blue;border-radius:25px;box-shadow:5px 5px 0px -2px rgba(0,0,0,1.5);">Make Test Updations</h6></td>
<td><div class="dropdown"><button class="dropbtn">
<span class="glyphicon glyphicon-briefcase"></span><h6>Payment Options</h6><span class="glyphicon glyphicon-menu-down"></span>
<ol class="dropdown-content"><li>Managerial skills<span class="glyphicon glyphicon-check">200[Indian Currency]</span></li>
<li>Business skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li>
<li>Financial skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li>
<li>Teaching skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li>
<li>Social skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li></ol></button></div></td>
</tr></table></div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>