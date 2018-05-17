var LoadMoreProductEvents = function(){
  $('#loadMore').on('click', function(e) {
    debugger;
    var url;
    e.preventDefault();
    url = $(this).attr('href');
    return $.getScript(url);
  });
}

var ready;

ready = function() {
  LoadMoreProductEvents();
};

$(document).ready(ready);
// $(document).on('turbolinks:load', ready);
