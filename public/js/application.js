$(document).ready(function() {
  $("#car_form").on("submit", function(event){
    event.preventDefault();



    console.log($(this).serialize())

    request = $.ajax({
                url: "/cars",
                method: "post",
                data: $(this).serialize()
    })



    request.done(function(response){
      console.log(response)
      $("#car_1").remove()
      $("#car_1_position").append(response)
    })






  })
});
