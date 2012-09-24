class unfucktheplanet.models.Fuck extends Backbone.Model
  paramRoot: 'fuck'
  
  defaults:
    title: null
    description: null
    location: null
    user: null

class unfucktheplanet.collections.FucksCollection extends Backbone.Collection
  model: unfucktheplanet.models.Fuck
  url: '/fucks'