

function findInfo(){
  var query =  $('#q')[0].value;
  $.ajax({
    type: 'GET', 
    url: '/people?q='+query, 
    dataType: 'json'
  }).done(function(data){
    $.each(data, function(index, person) {
      $('.results').append("<div>"+
                              "<h2>"+
                                person.name +
                              "</h2>"+
                            "</div>")
    })
  })
};




$(document).ready(function(){
  $('.search-submit').on('click', function(e){
    e.preventDefault();
    findInfo();
  })
});