// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

var pusher = new Pusher('0c291b19a3081f5ec4aa');
console.log (pusher)
// var channel = pusher.subscribe('site-activity');
var channel = pusher.subscribe('test_channel');
console.log(channel)
channel.bind('action', function(data) {
  console.log("action received!");
  console.log($('.check'));
  $('.live_update').prepend(" working ");
});
