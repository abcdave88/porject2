// function appendSearchItem(data){
//   $('<li class="'+ (data.done == 't' ? "completed" : "") + '">'+
//     '<input class="toggle" type="checkbox" data-id="'+ data.id +'" '+ (data.done == 't' ? 'checked="checked"' : "") + '>'+
//     '<label>'+ data.item +'</label>'+
//     '<button class="destroy" data-id="'+ data.id +'"></button>'+
//     '</li>').prependTo(".results")
// }; what the fuck?!


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
    
    // $.each(data, function(index, item){
    //   // appendSearchItem(item);
    //   console.log('FUCK YOU!');
    // })
  })
};


$(document).ready(function(){
  $('.search-submit').on('click', function(e){
    e.preventDefault();
    findInfo();
  })
});