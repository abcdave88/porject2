// function appendSearchItem(data){
//   $('<li class="'+ (data.done == 't' ? "completed" : "") + '">'+
//     '<input class="toggle" type="checkbox" data-id="'+ data.id +'" '+ (data.done == 't' ? 'checked="checked"' : "") + '>'+
//     '<label>'+ data.item +'</label>'+
//     '<button class="destroy" data-id="'+ data.id +'"></button>'+
//     '</li>').prependTo(".results")
// }; what the fuck?!


function findInfo(){
  var query = this.options[this.selectedIndex].innerHTML; 
  //console.log(query);
  
  // $.ajax({
  //   type: 'GET', 
  //   url: '/search/find' 
  //   dataType: 'json',
  //   data: {item: itemData}
  // })done(function(data){
  //   $.each(data, function(index, item){
  //     appendSearchItem(item);
  //     console.log('FUCK YOU!');
  //   })
  // })
};


$(document).ready(function(){
  $('#person_person_id').on('change', findInfo);
  $('#instrument_instrument_id').on('change', findInfo);
});