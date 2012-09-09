
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
      
      window.Fucks = new Unfucktheplanet.Collections.FucksCollection;

      //DELETE: ? 
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
