  window.FeaturedFuckItem = Backbone.View.extend({

    tagName:  "div",

    events: {
      "click"              : "onClick",
    },

    initialize: function() {
      this.model.view = this;
    },

    // Re-render the contents of the fuck item.
    render: function() {
      $(this.el).html(JST.featured_fuck_template(this.model.toJSON()));
      return this;
    },
    
    onClick: function(){
      Backbone.history.navigate('fuck/' + this.model.id, {trigger: true});
    }
  });

