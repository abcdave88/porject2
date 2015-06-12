

function findInfo(){
  var query =  $('#q')[0].value;
  $.ajax({
    type: 'GET', 
    url: '/people?q='+query, 
    dataType: 'json'
  }).done(function(data){
    $.each(data, function(index, person) {
   
      $('.results').append("<div class='name'><h3>  ||   "+person.name+" </h3></div>");
            $('.results').append("<div class='location'><h3> "+person.location+"  ||  </h3></div>");

    })
  })
};




$(document).ready(function(){
  $('.search-submit').on('click', function(e){
    e.preventDefault();
    findInfo();
  })
});