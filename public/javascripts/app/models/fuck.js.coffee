class Unfucktheplanet.Models.Fuck extends Backbone.Model
  paramRoot: 'fuck'

  defaults:
    title: null
    description: null
    location: null
    user: null

class Unfucktheplanet.Collections.FucksCollection extends Backbone.Collection
  model: Unfucktheplanet.Models.Fuck
  url: '/fucks'