$( document ).ready(function() {
  $('.submit-tag').on('click', function(e){
    // prevent the default action of the form
    e.preventDefault();

    var goalId = window.location.pathname;
    $.ajax({
      type: 'PUT',
      url: goalId + "/add_user",
      dataType: "json"
    }).done(function(response){
      $('.js-join-goal-form').hide();
      $('#lets-do-this').removeClass('hidden')
    })

    // the data you need to send up is the current_user id (rememver data attributes!)

    // when you're 'done' then remove the join button from the page

    // if you refresh the page, will the join button still be there?
    // you might need to put some checks in the show'html.erb file to see if the user has joined the goal yet


  })
});


// countries.js - rest countries