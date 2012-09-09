class Unfucktheplanet.Models.Unfuck extends Backbone.Model
  paramRoot: 'unfuck'

  defaults:
    description: null
    location: null
    fuck: null
    user: null

class Unfucktheplanet.Collections.UnfucksCollection extends Backbone.Collection
  model: UnUnfucktheplanet.Models.Unfuck
  url: '/unfucks'