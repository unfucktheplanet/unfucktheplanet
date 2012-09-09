// An example Backbone application contributed by
// [JÃ©rÃ´me Gravel-Niquet](http://jgn.me/). This demo uses a simple
// [LocalStorage adapter](backbone-localstorage.html)
// to persist Backbone models within your browser.

// Load the application once the DOM is ready, using `jQuery.ready`:
$(function(){

     // The Application
  // ---------------

  // Our overall **AppView** is the top-level piece of UI.
  window.AppView = Backbone.View.extend({

    // Instead of generating a new element, bind to the existing skeleton of
    // the App already present in the HTML.
    el: $("#unfucktheplanet"),

    events: {
      "click": "follow"
    },

    // At initialization we bind to the relevant events on the `Todos`
    // collection, when items are added or changed. Kick things off by
    // loading any preexisting todos that might be saved in *localStorage*.
    initialize: function() {
      this.input    = this.$("#new-todo");

      // bind here: Fucks.bind('add',   this.addOne, this);

      Fucks.bind('add',   this.addFuck, this);
      Fucks.bind('reset', this.reset, this);
      Fucks.bind('all',   this.render, this);
      
      Fucks.fetch();
    },
    render: function() {
    },
    addFuck: function(fuck) {
      var item = new FuckListItem({model: fuck});
      this.$("#fuck-list").append(item.render().el);
    },
    reset: function(){
      Fucks.each(this.addFuck)
    },
    follow: function(fuck){
      Backbone.history.navigate('fuck/'+fuck.id, {trigger: true});
    }
  });

  // Create our global collection of **Todos**.
  window.Fucks = new Unfucktheplanet.Collections.FucksCollection;
  // Finally, we kick things off by creating the **App**.
  window.App = new window.AppView;
  
  new Unfucktheplanet.Router();
  Backbone.history.start();

});