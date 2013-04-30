$(document).ready(function() {
  $('.fancybox').fancybox({
  openEffect  : true,
  closeEffect : true,
  prevEffect : true,
  nextEffect : true,
  closeBtn  : true,
  arrows    : true,
  nextClick : true,
  helpers : {
  title : {
   type : 'inside'
  },
  buttons : {},
  thumbs : {
   width : 100,
   height : 100
  }
  },
  afterLoad : function() {
    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
  }
  });
});
