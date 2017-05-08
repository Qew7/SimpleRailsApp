/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/*/

$(document.addEventListener("turbolinks:load", function() {
  $('#poster_field').on('change', function(event) {
    var files = event.target.files;
    var image = files[0];
    console.log(image.size);
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image(267, 400);
      console.log(file);
      img.src = file.target.result;
      $('#poster-prev').empty().html(img);
      $('img').addClass("poster-big");
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
}));