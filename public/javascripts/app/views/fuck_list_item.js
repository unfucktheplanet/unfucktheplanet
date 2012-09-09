  // The DOM element for a fuck list item...
  window.FuckListItem = Backbone.View.extend({

    //... is a list tag.
    tagName:  "li",

    // The DOM events specific to an item.
    events: {
      "click"              : "onClick",
    },

    initialize: function() {
      this.model.view = this;
    },

    // Re-render the contents of the fuck item.
    render: function() {
      $(this.el).html(JST.base_fuck_template(this.model.toJSON()));
      this.setContent();
      return this;
    },
    
    setContent: function() {
      var content = this.model.get('content');
      this.$('.fuck-content').text(content);
    },
    
    onClick: function(){
      Backbone.history.navigate('fuck/' + this.model.id, {trigger: true});
    }
  });

