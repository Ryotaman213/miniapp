$(document).on('turbolinks:load', function() {
  $(".action").on("click", function() {
   alert("are you sure?");
     });
     $("#submit").on("click", function() {
    alert("完了しました");
  });
      $(".brand-logo").on("mouseover", function(){
    $(this).css("color", "red");
  });
    $(".brand-logo").on("mouseout", function(){
    $(this).css("color", "white");
  });
});


