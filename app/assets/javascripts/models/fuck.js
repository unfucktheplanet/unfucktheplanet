window.unfucktheplanet.models.Fuck = Backbone.Model.extend({
  paramRoot: 'fuck',
  
  defaults: ({
    title: null,
    description: null,
    location: null,
    user: null
  })
});

window.unfucktheplanet.collections.FucksCollection = Backbone.Collection.extend({
  model: unfucktheplanet.models.Fuck,
  url: '/fucks'
});