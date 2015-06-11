// function appendSearchItem(data){
//   $('<li class="'+ (data.done == 't' ? "completed" : "") + '">'+
//     '<input class="toggle" type="checkbox" data-id="'+ data.id +'" '+ (data.done == 't' ? 'checked="checked"' : "") + '>'+
//     '<label>'+ data.item +'</label>'+
//     '<button class="destroy" data-id="'+ data.id +'"></button>'+
//     '</li>').prependTo("#todo-list")
// }; what the fuck?!


// function findInfo(){
//   console.log('get me those data biatches!');
//   $.ajax({
//     type: 'GET', 
//     url: '/search/find' - I dont know 
//     dataType: 'json',
//     data: {item: itemData}
//   })done(function(data){
//     $.each(data, function(index, item){
//       appendSearchItem(item);
//       console.log('FUCK YOU!');
//     })
//   })
// };


$(document).ready(function(){
  $('#person_person_id').on('change', findInfo);
  $('#instrument_instrument_id').on('change', findInfo);
});