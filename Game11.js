/**
 * 
 */
  var character=document.getElementById("character");
 var interval;
 var both=0;
 
 function moveLeft(){
	var left=
	parseInt(window.getComputedStyle(character).getProperValue("left"));
	if(left>0){
	character.style.left=left+2+"px";
	}
	}
 function moveRight(){
	var left=
	parseInt(window.getComputedStyle(character).getPropertyValue("left"));
	if(left<380){
	character.style.left=left-2+"px";
	}
}

document.addEventListener("keydown",event=>{
	if(both==0){
		both++;
		if(event.key==="ArrowLeft"){
			interval=setInterval(moveLeft,1);
		}
		if(event.key==="ArrowRight"){
			interval=setInterval(moveRight,1);
		}
	}
});

document.addEventListener("keyup",event=>{
	clearInterval(interval);
	both=0;
});

setInterval(function(){
	
	var blockLast=document.getElementByid("block"+(counter-1));
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
var characterLeft=parseInt(window.getComputedStyle(character).getPropertyValue("left"));
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
	character.style.top=characterTop+2+"px";
}
else{
	character.style.top=characterTop-0.5+"px";
	}
},1);