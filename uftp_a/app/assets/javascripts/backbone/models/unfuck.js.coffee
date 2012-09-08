class UftpA.Models.Unfuck extends Backbone.Model
  paramRoot: 'unfuck'

  defaults:
    description: null

class UftpA.Collections.UnfucksCollection extends Backbone.Collection
  model: UftpA.Models.Unfuck
  url: '/unfucks'
