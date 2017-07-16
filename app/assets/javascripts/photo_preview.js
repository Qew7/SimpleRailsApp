$(document.addEventListener("turbolinks:load", function() {
  $('#image_field').on('change', function(event) {
    var files = event.target.files;
    var image = files[0];
    console.log(image.size);
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image(267, 400);
      console.log(file);
      img.src = file.target.result;
      $('#image-prev').empty().html(img);
      $('img').addClass("image-big");
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
}));