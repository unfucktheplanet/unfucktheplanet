class UftpA.Models.Resources extends Backbone.Model
  paramRoot: 'resource'

  defaults: 0

class UftpA.Collections.ResourcesCollection extends Backbone.Collection
  model: UftpA.Models.Resources
  url: '/resources'
