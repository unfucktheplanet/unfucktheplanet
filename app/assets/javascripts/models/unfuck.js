window.unfucktheplanet.models.Unfuck = Backbone.Model.extend({
  paramRoot: 'unfuck',

  defaults: ({
    description: null,
    location: null,
    fuck: null,
    user: null
  })
});
  
window.unfucktheplanet.collections.UnfucksCollection = Backbone.Collection.extend({
  model: unfucktheplanet.models.Unfuck,
  url: '/unfucks'
});