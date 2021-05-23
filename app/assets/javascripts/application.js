// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
(function() {

  // using a constant value we can make it dynamic as well.
  var uuid = 100;
  window.ImportChannel.Subscribe(uuid)

  $(document).on('ready', function() {
    $('body').on('click', '.csv-btn', function(e) {
      if ($("#data").val() != "" ){
        let URL;
        $('.csv-btn').html("Importing...");
        $('.csv-btn').addClass('disabled');
        URL = '/home';
        $(".csv-form").attr('action', '/home')
        $("#import_id").val(uuid)
        $(".csv-form").submit();
      }  
    });
  });

}).call(this);
