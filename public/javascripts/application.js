// An example Backbone application contributed by
// [JÃ©rÃ´me Gravel-Niquet](http://jgn.me/). This demo uses a simple
// [LocalStorage adapter](backbone-localstorage.html)
// to persist Backbone models within your browser.

// Load the application once the DOM is ready, using `jQuery.ready`:
$(function(){

  new Unfucktheplanet.Router();
  Backbone.history.start();
  
  Backbone.history.navigate('', {trigger:true});
});