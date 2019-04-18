<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
	<title>Zach's Vending Machine</title>
	<link rel="stylesheet" href="css/vending.css"/>
	      <script> 
         //function that display value 
         function dis(val) 
         { 
             document.getElementById("screen").value+=val 
         } 
           
         //function that clear the display 
         function clr() 
         { 
             document.getElementById("screen").value = "" 
         } 
         
        function stopScroll()
        {
        	var screen = document.getElementById("screen");
        	screen.classList.remove("scrollLeft");
        }
      </script> 
</head>

<body>

	<section id="vendingBody">
	
	<div id="vendingParts">
		<div id="vendingInventory">
			
		
		</div>
		<div id="vendingGlass">
			
			
			</div>
	</div>
	
	<form id="controlFrame" name="vendingInput">
		<input type="text" id="screen" class="scrollLeft" name="screen" placeholder="SNACKS" disabled/>
		<div id="buttonBox">
			<input type="button" id="aButton" value="A" onclick = "dis('A'); stopScroll();"/>
			<input id="bButton" type="button" value="B" onclick = "dis('B'); stopScroll();"/>
			<input id="cButton" type="button" value="C"onclick = "dis('C'); stopScroll();"/>
			<input type="button" id="dButton" value="D" onclick = "dis('D'); stopScroll();"/>
			<input type="button" id="oneButton" value="1" onclick = "dis('1'); stopScroll();">
			<input type="button" id="twoButton" value="2"onclick = "dis('2'); stopScroll();"/>
			<input type="button" id="threeButton" value="3" onclick = "dis('3'); stopScroll();"/>
			<input type="button" id="fourButton" value="4" onclick = "dis('4'); stopScroll();"/>
		</div>
	</form>
	
	<div id="moneyFeederFrame">
		<div id="moneyFeeder"></div>
	</div>
	
	<div id="coinDispense"></div>
	
	<div id="pushDoor">PUSH</div>
	
	<div class="front-left-leg"></div>
	<div class="front-right-leg"></div>
	</section>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>