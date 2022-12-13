<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>General Test # IQSystem</title>
<style>
.container-fluid{
min-height:700px;
min-width:800px;
background-image:url("images/iqlogo.png");
}
.dropbtn{
width:400px;
height:150px;
background-color:blue;
color:#000000;
scale(1,5);
padding:16px;
font-size:24px;
border-radius:40px;
border:none;
}
.option{
position:relative;
display:inline-block;
min-width:300px;
}
.navlist1{
display:none;
backgroun-color:#ffffff;
position:absolute;
min-height:400px;
min-width:200px;
box-shadow:0px 8px 16px 0px rgba(128,0,0,2.5);
z-index:1;
}
.navlist1:focus{
color:black;
padding:12px 16pxs;
display:block;
}
.navlist1:hover{
background-color:#ffffcc;
display:block;
}
.option:hover .navlist1{
display:block;
background-color:#ffffcc;
}
.option:hover .dropbtn{
background-color:#3e8e41;
font-size:32px;
}
table{
height:500px;
width:700px;
padding-top:0px;
cell-spacing:5px;
cellpadding:5px;
background-color:none;
}
td{
width:400px;
height:100px;
background-color:lightblue;
text-align:center;
font-size:20px;
font-color:black;
border-radius:20px;
border:5px groove rgb(128,0,0));
}
td:hover{
transform:perspective(4.5cm);
font-size:32px;
}
</style>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
<div class="container-fluid"><div class="row text-center">
<div class="col-xs-6">
<table style="position:absolute">
<tr><td style="background:none;"></<td><td style="box-shadow:0px 20px 20px -5px rgba(0,0,128,0.5);"><h4><b>The Human Brain is the Ultimate Almighty</b></h4></td></tr>
<tr><td style="height:200px;width:300px;box-shadow:20px 20px 0px -5px rgba(0,0,128,0.5);"><img src="images/iqs.jpg" width=400 height=100 alt="iq" title="IQ"/><h4>All Visitors to the Site are <b>FREE</b>to take these Tests</h4></td><td style="background:none;"></tr>
<tr><td style="background:none;"></td><td style="box-shadow:-5px 0px 10px 10px rgba(0,0,128,0.5);"><h4><b>Complete Your Profile before You Plunge into Challenging Your Limits</b></h4></td></tr>
</table></div>
<div class="col-xs-4 col-xs-offset-6">
<div class="option" style="position:relative;margin-left:500px;"><button class="dropbtn"><h2>Available General Tests</h2><span class="glyphicon glyphicon-menu-down"></span>
<ol class="navlist1">
<li><span class="glyphicon glyphicon-knight"><h4>Solve Comprehension & Language</h4></span></li><br/>
<li><span class="glyphicon glyphicon-pawn"><h4>Solve Series</h4></span></li><br/>
<li><span class="glyphicon glyphicon-bishop"><h4>Solve Patterns</h4></span></li><br/>
<li><span class="glyphicon glyphicon-queen"><h4>Solve General Mathematics</h4></span></li><br/>
<li><span class="glyphicon glyphicon-king"><h4>Play Games</h4></span></li><br/>
</ol></button></div></div>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>