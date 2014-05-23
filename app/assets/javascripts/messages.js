// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// scroll the chat transcript to the top
$( document ).ready(function() {

  $('.message-window').scrollTop($('.message-window')[0].scrollHeight);

	$( "button.btn.btn-sm" ).on( "click", function( event ) {
	  $("#log-out-form").modal();
	});

//  $( "#post" ).on( "submit", function( event ) {
//		$("#col-lg-10").trigger("create");
//  });

});