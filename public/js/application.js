$(document).ready(function() {
  $("#car_1_form").on("submit", function(event){
    event.preventDefault();



    console.log($(this).serialize())

    request = $.ajax({
                url: "/cars/1",
                method: "post",
                data: $(this).serialize()
    })



    request.done(function(response){
      // console.log(response)
      console.log($('#car_1_position'))
      $('#car_1_position').empty()
      $("#car_1_position").append(response)
    })

  })


  $("#car_2_form").on("submit", function(event){
    event.preventDefault();

    console.log($(this).serialize())

    request = $.ajax({
                url: "/cars/2",
                method: "post",
                data: $(this).serialize()
    })

    request.done(function(response){
      // console.log(response)
      console.log($('#car_2_position'))
      $('#car_2_position').empty()
      $("#car_2_position").append(response)
    })

  })

});
