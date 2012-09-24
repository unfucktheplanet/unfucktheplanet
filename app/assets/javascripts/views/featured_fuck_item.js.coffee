class unfucktheplanet.views.FeaturedFuckItem extends Backbone.View

  tagName:  "div"

  template: HBS["templates/featured_fuck_template"]

  events:
    "click"              : "onClick"

  initialize: ->
    this.model.view = this;

  # Re-render the contents of the fuck item.
  render: ->
    $(this.el).html(this.template(this.model.toJSON()));
    return this;
  
  onClick: ->
    Backbone.history.navigate('fuck/' + this.model.id, {trigger: true});