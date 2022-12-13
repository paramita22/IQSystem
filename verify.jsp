<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify Email</title>
<style>
.container fluid{
height:600px;
background-image:url("images/loginbackground.jpg");
}
input{
height:50px;
width:200px;
left:40%;
right:30%;
}
</style>
</head>
<body>
<jsp:include page="header3.jsp"></jsp:include><br/><br/><br/>
<div class="container-fluid">
<input type="text" name="passcode"/>
<a href="UserProfile1.jsp"><input type="submit" name="verify"/></a>
<a href="UserProfile2.jsp"><button type="submit"></button></a>
</div>
</body> 
</html>