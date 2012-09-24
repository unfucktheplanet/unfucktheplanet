class unfucktheplanet.views.FuckListItem extends Backbone.View

  tagName:  "li"

  template: HBS["templates/base_fuck_template"]

  events:
    "click"              : "onClick"

  initialize: ->
    this.model.view = this;

  # Re-render the contents of the fuck item.
  render: ->
    $(this.el).html(this.template(this.model.toJSON()));
    this.setContent();
    return this;
  
  setContent: ->
    content = this.model.get('content');
    this.$('.fuck-content').text(content);
  
  onClick: ->
    Backbone.history.navigate('fuck/' + this.model.id, {trigger: true});