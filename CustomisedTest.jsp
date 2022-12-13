<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Information # IQSystem</title>
<style>
	.container-fluid{
	min-height:680px;
	min-width:800px;
	background-image:url("images/iqlogo.png");
	}
	h4{
  width: 700px;
  height: 100px;
  margin-bottom:100px;
  background-color: red;
  position: relative;
  animation-name: example;
  animation-duration: 8s;
  animation-iteration-count: 4;
}

@keyframes example {
  0%   {background-color:red; left:0px; top:0px;}
  25%  {background-color:yellow; left:500px; top:0px;}
  50%  {background-color:blue; left:600px; top:550px;}
  75%  {background-color:green; left:50px; top:550px;}
  100% {background-color:red; left:0px; top:0px;}
}
	.dropbtn{
	width:350px;
	height:300px;
	background-color:blue;
	color:#000000;
	padding:10px;
	padding-right:10px;
	font-size:12px;
	font-weight:bold;
	border:none;
	border-radius:25px;
	margin-right:-10px;
	}
	.dropdown{
	position:relative;
	display:inline-block;
	}
	.dropdown-content{
	display:none;
	background-color:#ffffff;
	position:absolute;
	width:300px;
	box-shadow:0px 8px 16px 0px rgba(128,0,128,2.5);
	}
	.dropdown-content a{
	color:black;
	padding:12px 16px;
	display:block;
	}
	.dropdown-content:hover{
	min-width:60px;
	background-color:#1b1b1b;
	color:#ffffff;
	}
	.dropdown:hover .dropdown-content{
	display:block;
	}
	.dropdown:hover .dropbtn{
	background-color:beige;
	font-size:20px;
	}
	h4{
	font-weight:bold;
	}
</style>
<script>
</script>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include>
<div class="container-fluid">
<h4>Customised Tests may be accessed enroute Payment Portal<br/><a href="PaymentPortal.jsp">PROCEED TO PAYMENT PORTAL<i class="fa fa-tag"></i></a></h4>
<div class="dropdown">
<div class="col-xs-2"><button class="dropbtn" style="position:relative;"><h2 style="font-size:20px;font-weight:bold;font-color:blue;">The TESTS Available are:</h2><span class="glyphicon glyphicon-menu-down"></span>
<ul class="dropdown-content">
<li>MANAGERIAL SKILL</li>
<li>BUSINESS SKILL</li>
<li>FINANCIAL SKILL</li>
<li>TEACHING SKILL</li>
<li>SOCIAL SKILL</li>
</ul></button></div></div>
<div class="dropdown">
<div class="col-xs-2 col-xs-offset-2">
<button class="dropbtn" style="margin-left:200px;position:relative;"><i class="fa fa-university" style="width:50px;height:50px;"></i><h2><b>**Institutes**</b></h2><span class="glyphicon glyphicon-menu-down"></span>
<h2>Make one time Payment && Get Unlimited Access for One Year</h2>
<ul class="dropdown-content"><li><span class="glyphicon glyphicon-briefcase"></span></li>
<li>Make payment for Each Test for 20 users/day<span class="glyphicon glyphicon-registration-mark"></span></li></ul></button></div></div>
<div class="dropdown">
<div class="col-xs-4 col-xs-offset-2"><button class="dropbtn" style="margin-left:200px;position:relative;">
<span class="glyphicon glyphicon-user"></span><span class="glyphicon glyphicon-credit-card"></span><h2>Make Payment To Access Test</h2><span class="glyphicon glyphicon-menu-down"></span>
<ol class="dropdown-content">Single User<li>Managerial skills<span class="glyphicon glyphicon-check">200[Indian Currency] </span></li>
<li>Business skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li>
<li>Financial skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li>
<li>Teaching  skills<span class="glyphicon glyphicon-check">100[Indian
Currency]</span></li>
<li>Social skills<span class="glyphicon glyphicon-check">100[Indian Currency]</span></li></ol></button></div>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>