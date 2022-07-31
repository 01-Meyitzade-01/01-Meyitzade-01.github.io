$(document).ready(function() {
  $('.grid').masonry({
    // options
    itemSelector: '.grid-item'
  });
  
  var toggleGlobalMenu = function() {
    $(".global-navigation").toggleClass("is-open");
  };
  $(".global-menu-toggle").click(function() {
    toggleGlobalMenu();
  });
  $(".global-menu-close").click(function() {
    toggleGlobalMenu();
  });
  
});