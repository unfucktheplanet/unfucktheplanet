window.Unfucktheplanet.Models.Unfuck = Backbone.Model.extend({
  paramRoot: 'unfuck',

  defaults: ({
    description: null,
    location: null,
    fuck: null,
    user: null
  })
});
  
window.Unfucktheplanet.Collections.UnfucksCollection = Backbone.Collection.extend({
  model: Unfucktheplanet.Models.Unfuck,
  url: '/unfucks'
});