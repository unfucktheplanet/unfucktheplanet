class UftpA.Models.Fuck extends Backbone.Model
  paramRoot: 'fuck'

  defaults:
    description: null

class UftpA.Collections.FucksCollection extends Backbone.Collection
  model: UftpA.Models.Fuck
  url: '/fucks'
