/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/*/

$(document.addEventListener("turbolinks:load", function() {
  $('#photo_field').on('change', function(event) {
    var files = event.target.files;
    var image = files[0];
    console.log(image.size);
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image(267, 400);
      console.log(file);
      img.src = file.target.result;
      $('#photo-prev').empty().html(img);
      $('img').addClass("photo-big");
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
}));