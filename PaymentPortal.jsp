<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Payment Portal # IQSystem</title>
<style>
.container-fluid{
min-height:600px;
min-width:800px;
border:5px solid black;
}
.dropbtn{
	width:250px;
	height:100px;
	background-color:rgba(255,0,0,2);
	color:#ffffff;
	padding:10px;
	font-size:18px;
	font-weight:bold;
	border:none;
	border-radius:25px;
	}
	.dropdown{
	display:inline-block;
	padding:80px;
	margin:80px;
	}
	.dropdown-content{
	display:none;
	background-color:#ffffff;
	color:#000000;
	text-align:left;
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
	font-size:24px;
	}
	h4{
	font-weight:bold;
	}
table{
height:400px;
width:400px;
border:5px solid red;
float:right;
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
<script>
function pm(){
var mastercard=document.getElementById("pm1").value;
var paypal=document.getElementById("pm2").value;
var ebay=document.getElementById("pm3").value;
var visa=document.getElementById("pm4").value;
	if(mastercard===true){
		document.getElementById("pym").innerHTML=="Mastercard";
	}
	else if(paypal===true){
		document.getElementById("pym").innerHTML=="PayPal";
	}
	else if(ebay===true){
		document.getElementById("pym").innerHTML=="Ebay";
	}
	else if(visa===true){
		document.getElementById("pym").innerHTML=="Visa";
	}
}
</script>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include><br/>
<div class="container-fluid">
<h2><b>Welcome to The Payment Portal</b>&nbsp;&nbsp;&nbsp;&nbsp;Enter User ID/Institute ID<input type="number" name="userid"><img src="images/AI11.png" width=100 height=100 style="position:relative;float:right;"></h2>
<form method="POST" action="payment_receipt.jsp">
<div class="dropdown">
<div class="col-xs-3" style="float:left;">
<button class="dropbtn" style="position:absolute;"><h4><b>Choose from the available payment methods</b></h4>
<span class="glyphicon glyphicon-menu-down"></span><br/>
<ul class="dropdown-content">
<li><img src="images/mastercard.jpg"><input type="radio" name="payment_mode" id="pm1"></li><br/>
<li><img src="images/paypal.jpg"><input type="radio" name="payment_mode" id="pm2"></li><br/>
<li><img src="images/ebay.jpg"><input type="radio" name="payment_mode" id="pm3"></li><br/>
<li><img src="images/visa.jpg"><input type="radio" name="payment_mode" id="pm4"></li></ul></button></div></div>
<div class="dropdown">
<div class="col-xs-3">
<button class="dropbtn" style="position:absolute;">Select Customised Tests:<span class="glyphicon glyphicon-menu-down"></span><br/>
<ul class="dropdown-content">
<li><input type="checkbox" name="ctestcode">Managerial Skills</li><br/>
<li><input type="checkbox" name="ctestcode">Business Skills</li><br/>
<li><input type="checkbox" name="ctestcode">Finanancial Skills</li><br/>
<li><input type="checkbox" name="ctestcode">Teaching Skills</li><br/>
<li><input type="checkbox" name="ctestcode">Social Skills</li></ul></button>
</div></div>
<div class="col-xs-4">
<table><tr><td></td><td><h4>Please fill in the Credentials below:</h4></td></tr><br/>
<tr><td>Enter Card No.:</td><td><input type="number" name="acc_id" required><br/></td></tr><br/>
<tr><td>Enter the Name of Account Holder:</td><td><input type="text" name="acc_hname" placeholder="acc_holder_name"required/></td></tr>
<tr><td>Enter Amount:</td><td><input type="number" name="payment_amount"required/></td></tr><br/>
<tr><td>Select Bank:<br/>HDFC<input type="radio" name="mb1"><br/>ICICI<input type="radio" name="mb1"><br/>AXIS BANK<input type="radio" name="mb1"><br/>OTHER<input type="radio" name="mb1"></td></tr>
<tr><td>Payment Methods:</td><td><input type="text" id="pym" onkeyup="pm();" required></td></tr><tr><td>Selected Customised Tests:</td><td><input type="text" onkeyup="sct();" required></td></tr></table></div>
<input type="submit" value="Confirm and Proceed" class="btn btn-danger" style="width:220px;height:80px;float:right;font-weight:bold;font-size:20px;"></form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>