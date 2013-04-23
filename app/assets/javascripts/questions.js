// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

var pusher = new Pusher('ea68d0e9ff775535a631');

var channel = pusher.subscribe('site-activity');
channel.bind('action', function(data) {
  $('td').append("<td>" + data + "</td>");
});