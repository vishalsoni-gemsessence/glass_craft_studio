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
  addActiveClass();
  LoadMoreProductEvents();
  scrollContactsForm();
  justifiedPhotoGallery();
  LoadAllGalleryPhotos();
  disableRightClickForImage();
  displayActiveInactiveHeaderButtons();
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

function justifiedPhotoGallery(){
  $('#JustifiedGallery').justifiedGallery({
    rowHeight : 300
  });
}

function addActiveClass(){
  $('.filter-taxon-btn').click(function(e){
      if($(this).hasClass('btn-active')){
        $(this).removeClass('btn-active');
      }
      else{
        $(this).addClass('btn-active');
        $('.custom-all-btn').removeClass('btn-active');
        $('.all-photos input').prop('checked', false);
      }
      var arr = []
      $('.search-gallery').find('.filter-taxon-btn.btn-active').each(function(){
          arr.push($(this).data('t_child'));
      });

      if(arr.length == 0){
        $('.all-photos input').prop('checked', true);
      }
      $.ajax({
        type: "GET",
        url: "/t/photo-gallery",
        dataType: 'script',
        data: {
          selected_taxon: arr
        }
      });
    
  });
}

function LoadAllGalleryPhotos(){
  $('.custom-all-btn').click(function(){
    $(this).addClass('btn-active');
    $('.search-gallery').find('.filter-taxon-btn.btn-active').each(function(){
      $(this).trigger('click');
    });
  });
}

disableRightClickForImage = function(){
  jQuery(function() {
    jQuery(this).bind("contextmenu", function(event) {
        event.preventDefault();
    });
  });
}

displayActiveInactiveHeaderButtons = function(){
    $('.nav-item').click(function(){
      removeActiveClass();
      $(this).find('a').addClass('active');
      activeAttr = $(this).find('a').attr('href');
      localStorage.setItem('active-link-attr', activeAttr);
    });
    getAndAddActiveClassToNavItem();
}

removeActiveClass = function(){
  $('.nav-link.active').removeClass('active');
}

getAndAddActiveClassToNavItem = function(){
  var ele = localStorage.getItem('active-link-attr');
  if(ele == null){
    $('.nav-link.active').addClass('active');
  }
  else{
    removeActiveClass();
    $('.taxonomies li.nav-item a[href="'+ ele +'"]').addClass('active');
    localStorage.clear();
  }
}
