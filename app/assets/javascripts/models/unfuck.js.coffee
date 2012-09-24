class unfucktheplanet.models.Unfuck extends Backbone.Model
  paramRoot: 'unfuck'

  defaults:
    description: null
    location: null
    fuck: null
    user: null
  
class unfucktheplanet.collections.UnfucksCollection extends Backbone.Collection
  model: unfucktheplanet.models.Unfuck
  url: '/unfucks'