$(document).ready(function() {
  $('button').on('click', function() {
    var submit_msg = $('<p>You have clicked submit!</p>');
    $('#test').append(submit_msg);
    $('button').remove();
    alert("Hello World!");
  });
});