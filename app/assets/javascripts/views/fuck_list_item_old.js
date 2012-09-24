  window.unfucktheplanet.views.FuckListItem = Backbone.View.extend({

    tagName:  "li",

    template: HBS["templates/base_fuck_template"],

    events: {
      "click"              : "onClick",
    },

    initialize: function() {
      this.model.view = this;
    },

    // Re-render the contents of the fuck item.
    render: function() {
      $(this.el).html(this.template(this.model.toJSON()));
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