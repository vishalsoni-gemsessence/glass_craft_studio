var stack_topleft = {"dir1": "down", "dir2": "right", "push": "bottom"};
var stack_topright = {"dir1": "down", "dir2": "left", "push": "bottom"};
var stack_bottomleft = {"dir1": "up", "dir2": "right", "push": "bottom"};
var stack_bottomright = {"dir1": "up", "dir2": "left", "push": "bottom"};

function notification(position, notif_type,icon_class,notif_title,notif_text){
  var output_title, output_stack;
  if (notif_title==""){output_title="";} else {
    output_title='<h5><strong>'+notif_title+'</strong></h5>';
  };

  switch (position) {
    case 'topright' : output_stack = stack_topright; break;
    case 'topleft' : output_stack = stack_topleft; break;
    case 'bottomright' : output_stack = stack_bottomright; break;
    case 'bottomleft' : output_stack = stack_bottomleft; break;
  }

  new PNotify({
    title_escape: true,
    text: '<div class="content-list content-image"><div class="list-wrapper mgtp-10 mgbt-xs-10"><div><div class="menu-icon"><i class="'+icon_class+'"></i></div> <div class="menu-text">'+output_title+'<p class="lh-sm">'+notif_text+'</p> </div></div></div></div>',
    cornerclass: '',
    type: notif_type,
    icon: 'fontawesome4',
    addclass: 'stack-'+position,
    stack: output_stack
  })

}