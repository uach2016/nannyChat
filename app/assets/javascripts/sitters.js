// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// document.addEventListener("DOMContentLoaded", function(){
// 	if(window.location.pathname == "/sitters") {
// 		  handler = Gmaps.build('Google');
// 		  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
// 		    markers = handler.addMarkers(<%=raw @hash.to_json %>)
// 		    markers = handler.addMarkers(<%=raw @loc_client.to_json %>)
// 		    handler.bounds.extendWith(markers);
// 		    handler.fitMapToBounds();
// 		  });
// 	}
// });