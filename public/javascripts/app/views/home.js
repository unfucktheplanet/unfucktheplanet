
  window.HomeView = Backbone.View.extend({

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
      
      Fucks.fetch();{}
    },
    render: function() {
      $(this.el).html(); //TODO: use template for home view.
      return this;
    },
    addFuck: function(fuck) {
      if ( $(".fuck-featured > div").size() <= 3){
        var item = new FeaturedFuckItem({model: fuck});
        $(".fuck-featured").append(item.render().el);
      }else{
        var item = new FuckListItem({model: fuck});
        this.$("#fuck-list").append(item.render().el); 
      }
    },
    reset: function(){
      Fucks.each(this.addFuck);
    },
    follow: function(fuck){
      Backbone.history.navigate('fuck/'+fuck.id, {trigger: true});
    }
  });
