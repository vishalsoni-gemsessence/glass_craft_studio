var LoadMoreProductEvents = function(){
  $('#loadMore').on('click', function(e) {
    var url;
    e.preventDefault();
    url = $(this).attr('href');
    return $.getScript(url);
  });
}

var ready;

ready = function() {
  LoadMoreProductEvents();
  scrollContactsForm();
};

$(document).ready(ready);
// $(document).on('turbolinks:load', ready);

function scrollContactsForm(){
  target = $("#new_contact");
  if(target.length && $(".is-invalid.invalid-feedback.subsection-sm").length){
    $('html, body').animate({
                              scrollTop: target.offset().top + 450
                            }, 1000);
  }
}
