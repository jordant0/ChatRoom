// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
	$( "button.btn.btn-primary" ).on( "click", function( event ) {
	  $("#new-room-form").modal();
	});
});