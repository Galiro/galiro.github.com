$(window).stellar();

var container = document.querySelector('#container');
var msnry = new Masonry( container, {
  // options
  columnWidth: 0,
  itemSelector: '.item'
});