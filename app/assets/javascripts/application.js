// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-twipsy.js
//= require bootstrap-popover.js
//= require bootstrap-alerts.js
//= require bootstrap-modal.js
//= require bootstrap-scrollspy.js
//= require_tree .

$(document).ready(function(){
  $('input,select').keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });
  $('input[type="radio"]').change(function() {           
      if ($(this).attr('rel') == 'status'){
        $('input[rel="status"]').parent().removeClass('active');
      }else{
        $('input[rel="access"]').parent().removeClass('active');
      }
      if($(this).is(':checked'))  {
          $(this).parent().addClass('active');
      }
  });
  $('input[type="checkbox"]').change(function() {           
    if ($(this).is(':checked'))  {
      $(this).parent().addClass('active');
    }else{
      $(this).parent().removeClass('active');
    }
  });
  $('.close').live('click',function(){
      $(this).parent().fadeOut('slow');
  });
  
  $('.popover-info').popover({
    placement:"right",
    trigger: "hover"  
  });
  
  $('#select-report').modal({
    keyboard: true
  });
  
});
