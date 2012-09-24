class unfucktheplanet.views.HomeView extends Backbone.View

  el: $("#unfucktheplanet")

  events:
    "click" : "follow"

  # At initialization we bind to the relevant events on the `Fuck`
  # collection, when items are added or changed. Kick things off by
  # loading all the fucks from the server.
  initialize: ->
    
    window.Fucks = new unfucktheplanet.collections.FucksCollection;

    # bind here: Fucks.bind('add',   this.addOne, this);

    Fucks.bind('add',   this.addFuck, this);
    Fucks.bind('reset', this.reset, this);
    Fucks.bind('all',   this.render, this);
    
    Fucks.fetch();

  render: ->
    $(this.el).html(); #TODO: use template for home view.
    return this;

  addFuck: (fuck) ->
    if ( $(".fuck-featured > div").size() <= 3)
      item = new unfucktheplanet.views.FeaturedFuckItem({model: fuck});
      $(".fuck-featured").append(item.render().el);
    else
      item = new unfucktheplanet.views.FuckListItem({model: fuck});
      this.$("#fuck-list").append(item.render().el); 

  reset: ->
    Fucks.each(this.addFuck);
  
  follow: (fuck) ->
    Backbone.history.navigate('fuck/'+fuck.id, {trigger: true});