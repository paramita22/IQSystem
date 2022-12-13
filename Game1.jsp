<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="Game11.js"><script>
<script>
var character=document.getElementById("character").innerHTML;
var interval;
var both=0;
var counter=0;

function moveLeft(){
	var left=parseInt(window.getComputedStyle(character).getPropertyValue("left"));
	if(left>0){
	character.style.left=left+2+"px";
	}
	}
	
function moveRight(){
	var left=parseInt(window.getComputedStyle(character).getPropertyValue("right"));
	if(left<380){
	character.style.left=left-2+"px";
	}
}

document.addEventListener("keydown",event=>{
	if(both==0){
		both++;
	}
});

document.addEventListener("keyup",event=>{
	clearInterval(interval);
	both=0;
});
function start(){
	var timer;
	timer=setInterval(function(){	
	var blockLast=document.getElementById("block"+(counter-1));
	var holeLast=document.getelementbyId("hole"+(counter-1));
	if(counter>0){
		var blockLastTop=parseInt(window.getComputedStyle(blockLast).getPropertyValue("top"));
		var holeLasttop=parseInt(window.getComputedStylr(holeLast).getPropertyValue("top"));
	}
	if(BlockLastTop<400||counter==0){
	
var block=document.createElement("div");
var hole=document.createElement("div");
block.setAttribute("class","block");
hole.setAttribute("class","hole");
block.setAttribute("id","block"+counter);
hole.setAttribute("id","hole"+counter);
block.style.top=blockLastTop+100+"px";
hole.style.top=holeLastTop+100+"px";
var random=Math.floor(Math.random()*360);
hole.style.left=random+"px";
game.appendChild(block);
game.appendChild(hole);
counter++;
}
var characterTop=parseInt(window.getComputedStyle(character).getPropertyValue("top"));
var characterleft=parseInt(window.getComputedStyle(character).getPropertyValue("left"));
var drop=0;
for(var i=0;i<currentBlocks.length;i++){
	let current=currentBlocks[i];
	let iblock=document.getElementByid("block"+current);
	let ihole=document.getElementById("hole"+current);
	let iblockTop=parseFloat(window.getComputedStyle(iblock).getPropertyvalue("top"));
	let iholeLeft=parseFloat(window.getComputedStyle(ihole).getPropertyValue("left"));
	iblock.style.top=iblockTop-0.5+"px";
	ihole.style.top=iblockTop-0.5+"px";
	if(iblockTop<-20){
		currentBlocks.shift();
		iblock.remove();
		ihole.remove();
	}
	if(iblockTop-20<characterTop&&iblockTop>characterTop){
		drop++;
	if(iholeLeft<=characterLeft&&iholeLeft-20>=characterLeft){
		drop=0;
		}
	}
}
if(drop==0){
	if(characterTop<480)
	character.style.top=characterTop+2+"px";
}
else{
	character.style.top=characterTop-0.5+"px";
	}
},1);
}

</script>
<meta charset="ISO-8859-1">
<%
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");

%>
<title>Game1 # SystemIQ</title>
<style>
.container-fluid{
height:700px;
width:100%;
background-color:#ffcccc;
}
#inverse{
height:500px;
width:200px;
padding-top:20px;
margin-left:0px;
text-align:left;
float:right;
position:absolute;
background-color:red;
color:#ffffff;
border:5px solid #ffffff;
}
#game{
	width:900px;
	height:500px;
	position:relative;
	margin-left:350px;
	border:2px solid black;
}
#character{
	width:20px;
	height:20px;
	background-color:red;
	border-radius:25%;
	position:relative;
	left:200px;
	margin-top:-30px;
	margin-bottom:20px;
	z-index:1000000;
}
.block{
	width:700px;
	height:20px;
	background-color:blue;
	position:relative;
	margin-top:-20px;
}
.hole{
	width:22px;
	height:20px;
	background-color:#ffffff;
	position:relative;
	margin-top:0px;
	top:-20px;
	z-index:9999;
}
#clock{
height:50px;
width:300px;
float:right;
text-align:center;
background-color:#000000;
color:#ffffff;
font-size:20px;
}
#start-btn{
        padding: 10px 20px;
        margin-top:10px;
        color:#000000;
        background-color:#ffffff;
        border:2px solid #000;
        border-radius:10px;
        font-weight:900;
        width:100px;
        height:30px;
    }
    #start-btn:hover{
        background-color:#eeeeee;
    }
</style>
</head>
<body>
<div class="container-fluid">
<jsp:include page="header3.jsp"></jsp:include>
<h4><b>Exam Code:15</b></h4>
<div id="clock"><script>
const startingMinutes=30;
let time=startingMinutes*60;
const countdownEl=document.getElementById('clock');
setInterval(updateCountdown, 1000);
function updateCountdown(){
	const minutes=Math.floor(time/60);
	let seconds=time % 60;
	seconds=seconds<10 ?'0'+seconds:seconds;
	countdownEl.innerHTML=minutes+":"+seconds;
	time--;
	
}

</script></div><br/><br/><br/>
<ul class="nav" id="inverse">
<h4>Exam Name:<br/>GAME</h4>

<li class="navbar-item"><a class="nav-link" href="index.jsp"><i class="fa fa-cog"></i>Back to Home</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogin.jsp"><i class="fa fa-arrow-right"></i>UserLogin</a></li>
<li class="navbar-item"><a class="nav-link" href="UserLogout.jsp"><i class="fa fa-plane"></i>UserLogout</a></li><br/><br/><br/>
<li><a href="StartGeneralTest.jsp"><input type="submit" value="End Game" style="height:100px;width:200px;background-color:blue;color:#ffffff;float:right;" class="btn btn-danger"/></a> </ul>              
<div id="game">
<button id="start-btn" value="Start" onclick="start();">START</button>"<br/>
<div id="character"><script>
var timer;
var bottomToTop;
var marginTop;
function moveCharacter () {
    var ball=document.getElementById("character");
    if(bottomToTop){
        marginTop -=30;
    }else{
        marginTop +=30;
    }
     
    ball.style.marginTop= marginTop+"px";
    if(marginTop==60){
        bottomToTop=false;
    }
    if(marginTop==360){
        bottomToTop=true;
    }
}
function start(){
    var btn=document.getElementById("start-btn");
    if(btn.innerHTML.trim()==='Start'){
        //start jumping the ball
        timer=setInterval(function () {
            moveCharacter();         
        },100);
        btn.innerHTML='Stop';
    }else{
        //stop jumping the ball
        clearInterval(timer);
        btn.innerHTML='Start';
    }
}</script></div>
<div class="block" id="block1" style="float:right;"></div>
<div class="hole" id="hole1" style="right:100px;left:400px;"></div>
<div style="width:100%;height:20px;"></div>
<div class="block" id="block2"></div>
<div class="hole" id="hole2" style="right:300px;left:100px;"></div>
<div style="width:100%;height:20px;"></div>
<div class="block" id="block3"></div>
<div class="hole" id="hole3" style="left:400px;right:100px;"></div>
<div style="width:600px;height:20px"></div>
<div class="block" id="block4" style="left:200px;"></div>
<div class="hole" id="hole4" style="right:500px;"></div>
<div style="width:600px;height:20px;"></div>
<div class="block" id="block5"></div>
<div class="hole" id="hole5" style="left:400px;"></div>
<div style="width:600px;height:20px;"></div><br/>
<div class="block" id="block6" style="float:right;"></div>
<div class="hole" id="hole6" style="left:508px;right:20px;"></div>
<div style="width:600px;height:20px;"></div>
<div class="block" id="block7"></div>
<div class="hole" id="hole7" style="right:719px;"></div>
<div style="width:600px;height:20px;"></div>
<div class="block" id="block8" style="float:right;"></div>
<div class="hole" id="hole8" style="left:500px;"></div>
<div style="width:600px;height:20px;"></div>
<div class="block" id="block9"></div>
<div class="hole" id="hole9" style="left:208px;right:108px;"></div>
<div style="width:600px;height:20px;"></div>
<div class="block" id="block10" style="float:right;"></div>
<div class="hole" id="hole10" style="left:600px;"></div><br/><br/>
</div></div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>