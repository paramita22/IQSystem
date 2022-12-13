<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Information # IQSystem</title>
<style>
.container-fluid{
min-height:600px;
min-width:1000px;
background-image:url("images/iqlogo.png");
}
.dropbtn{
width:300px;
height:150px;
background-color:blue;
color:#000000;
padding:16px;
font-size:12px;
border:none;
}
.dropdown{
position:relative;
display:inline-block;
}
.dropdown-content{
display:none;
background-color:#ffffff;
position:absolute;
min-width:160px;
box-shadow:0px 8px 16px 0px rgba(128,0,128,2.5);
}
.dropdown-content a{
color:black;
padding:12px 16px;
display:block;
}
.dropdown-content a:hover{
background-color:aqua;
}
.dropdown:hover .dropdown-content{
display:block;
}
.dropdown:hover .dropbtn{
background-color:#3e8e41;
font-size:20px;
}
</style>
<script>
window.onload=alert("Disclaimer:\nThis Website may be accessed to test General Intelligence, Cognitive Abilities and Problem Solving skills. We try to help build a better future. We do not claim to be a judge of inherent capabilities of individuals. Our Testing allows set Guidelines. Persistent Development is recognised.");
</script>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
<div class="container-fluid">
<div class="col-xs-4">
<div class="dropdown"><button class="dropbtn">
<h4>General Test</h4><p>[]Hover over me]</p><img src="images/studenticon.gif"/>
<div class="dropdown-content"><a href="GeneralTest.jsp">
<span class="glyphicon glyphicon-flag">Check General Test</span></a><br/>
<a href="UserProfile.jsp">User Complete Your Profile</a><br/>
<a href="InstituteProfile.jsp">Institute Fill Profile Detils</a></div>
</button></div></div>
<div class="col-xs-4 col-xs-offset-4" style="float:right;"><div class="dropdown">
<button class="dropbtn"><h4>Customised Test</h4><p>[Hover Over me]</p>
<div class="dropdown-content"><img src="images/logoiq1.jpg">
<a href="CustomisedTest.jsp"><span class="glyphicon glyphicon-lock">Check Customised Test</span></a>
<a href="PaymentPortal.jsp"><span class="glyphicon glyphicon-credit-card">Make Payment to Access</span></a></div>
</button></div></div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>