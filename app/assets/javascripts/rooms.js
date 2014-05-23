// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
	$( "#new-room-button" ).on( "click", function( event ) {
	  $("#new-room-form").modal();
	});
});