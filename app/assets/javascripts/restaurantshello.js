$(function(){
  $("#new_restaurant_remote_link").on("click", function(){
    // when user clicks on link , we need to select the blank option for the dropdown
    $("#restaurant_form_container").toggle('slow')
    $('#order_restaurant_id option[value=""]').attr("selected", "selected");
    $('#order_restaurant_id').css('visibility', function(i, visibility) {
        return (visibility == 'visible') ? 'hidden' : 'visible';
    })
  })
  // $('body').on('submit', '#new_restaurant', addRestaurant);
})

function addRestaurant(e){
  e.preventDefault(); 

  var formData = new FormData();
  formData.append('restaurant[picture]', $('#restaurant_picture')[0].files[0]);
  formData.append('restaurant[name]', $('#restaurant_name').val());
  formData.append('restaurant[address]', $('#restaurant_address').val());
  formData.append('restaurant[website]', $('#restaurant_website').val());
  formData.append('restaurant[city]', $('#restaurant_city').val());
  formData.append('restaurant[phone]', $('#restaurant_phone').val());

  $.ajax({
    url: "/restaurants.json",
    data: formData,
    contentType: false,
    processData: false,
    type: 'POST'
  }).done(function(restaurant){
    if (!restaurant) return false;
    addToOptions(restaurant);
  });
}

function addToOptions(restaurant) {
  $('#order_restaurant_id').prepend("<option selected='selected' value="+ restaurant.id +">"+restaurant.name +"</option>");
  $('#restaurant-form').slideUp(3550);
}