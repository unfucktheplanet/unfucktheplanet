window.Unfucktheplanet.Models.Fuck = Backbone.Model.extend({
  paramRoot: 'fuck',
  
  defaults: ({
    title: null,
    description: null,
    location: null,
    user: null
  })
});

window.Unfucktheplanet.Collections.FucksCollection = Backbone.Collection.extend({
  model: Unfucktheplanet.Models.Fuck,
  url: '/fucks'
});