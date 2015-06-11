function appendSearchItem(data){
  $('<li class="'+ (data.done == 't' ? "completed" : "") + '">'+
    '<input class="toggle" type="checkbox" data-id="'+ data.name +'" '+ (data.done == 't' ? 'checked="checked"' : "") + '>'+
    '<label>'+ data.item +'</label>'+
    '<button class="destroy" data-id="'+ data.age +'"></button>'+
    '</li>').prependTo(".results")
};



function findInfo(){

  // var query = this.options[this.selectedIndex].innerHTML; 
   var query =  $('#q')[0].value;

  $.ajax({
    type: 'GET', 
    url: '/people', 
    dataType: 'json',
    data: query
  }).done(function(data){
    console.log(data)
    $data.each( function(index, item){
      appendSearchItem(item);
      console.log('FUCK YOU!');
    })
  })
};










$(document).ready(function(){
  $('.search-submit').on('click', function(e){
    e.preventDefault();
    findInfo();
  })
});