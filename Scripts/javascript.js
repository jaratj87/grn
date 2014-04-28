$(document).ready(function() {
	 
	//ACCORDION BUTTON ACTION (ON CLICK DO THE FOLLOWING)
	$('.accordionButtonGreen').click(function() {

		//REMOVE THE ON CLASS FROM ALL BUTTONS
		$('.accordionButtonGreen').removeClass('on');
		  
		//NO MATTER WHAT WE CLOSE ALL OPEN SLIDES
	 	$('.accordionContent').slideUp('normal');
   
		//IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
		if($(this).next().is(':hidden') == true) {
			
			//ADD THE ON CLASS TO THE BUTTON
			$(this).addClass('on');
			  
			//OPEN THE SLIDE
			$(this).next().slideDown('normal');
		 } 
		  
	 });
	  
	$('.accordionButtonOrange').click(function() {

		//REMOVE THE ON CLASS FROM ALL BUTTONS
		$('.accordionButtonOrange').removeClass('on');

		//NO MATTER WHAT WE CLOSE ALL OPEN SLIDES
	 	$('.accordionContent').slideUp('normal');

		//IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
		if($(this).next().is(':hidden') == true) {

			//ADD THE ON CLASS TO THE BUTTON
			$(this).addClass('on');

			//OPEN THE SLIDE
			$(this).next().slideDown('normal');
		 } 

	 });
	
	$('.accordionButtonBlue').click(function() {

		//REMOVE THE ON CLASS FROM ALL BUTTONS
		$('.accordionButtonBlue').removeClass('on');

		//NO MATTER WHAT WE CLOSE ALL OPEN SLIDES
	 	$('.accordionContent').slideUp('normal');

		//IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
		if($(this).next().is(':hidden') == true) {

			//ADD THE ON CLASS TO THE BUTTON
			$(this).addClass('on');

			//OPEN THE SLIDE
			$(this).next().slideDown('normal');
		 } 

	 });
	
	$('.accordionButtonPink').click(function() {

		//REMOVE THE ON CLASS FROM ALL BUTTONS
		$('.accordionButtonPink').removeClass('on');

		//NO MATTER WHAT WE CLOSE ALL OPEN SLIDES
	 	$('.accordionContent').slideUp('normal');

		//IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
		if($(this).next().is(':hidden') == true) {

			//ADD THE ON CLASS TO THE BUTTON
			$(this).addClass('on');

			//OPEN THE SLIDE
			$(this).next().slideDown('normal');
		 } 

	 });
	
	/*** REMOVE IF MOUSEOVER IS NOT REQUIRED ***/
	
	//ADDS THE .OVER CLASS FROM THE STYLESHEET ON MOUSEOVER 
	$('.accordionButtonGreen').mouseover(function() {
		$(this).addClass('over');
		
	//ON MOUSEOUT REMOVE THE OVER CLASS
	}).mouseout(function() {
		$(this).removeClass('over');										
	});
	
	
	$('.accordionButtonOrange').mouseover(function() {
		$(this).addClass('over');
		
	//ON MOUSEOUT REMOVE THE OVER CLASS
	}).mouseout(function() {
		$(this).removeClass('over');										
	});
	
	$('.accordionButtonBlue').mouseover(function() {
		$(this).addClass('over');
		
	//ON MOUSEOUT REMOVE THE OVER CLASS
	}).mouseout(function() {
		$(this).removeClass('over');										
	});
	
	$('.accordionButtonPink').mouseover(function() {
		$(this).addClass('over');
		
	//ON MOUSEOUT REMOVE THE OVER CLASS
	}).mouseout(function() {
		$(this).removeClass('over');										
	});
	/*** END REMOVE IF MOUSEOVER IS NOT REQUIRED ***/
	
	
	/********************************************************************************************************************
	CLOSES ALL S ON PAGE LOAD
	********************************************************************************************************************/	
	$('.accordionContent').hide();

});
