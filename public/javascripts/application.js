$(document).ready(function() {
  $('#new_adress').formatedJson($('#errors'), $('#errors'), function(response) {
    var link = $('<dt>' + response['longurl'].link(response['longurl']) + '</dt>' +
               '<dd>' + response['shorturl'].link(response['shorturl']) + '</dd>')
               .hide().slideDown();
    $('#urls').append(link);
    $('#adress_url').val('');
  });
});

