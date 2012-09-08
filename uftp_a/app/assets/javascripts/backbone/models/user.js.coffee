class UftpA.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:

class UftpA.Collections.UsersCollection extends Backbone.Collection
  model: UftpA.Models.User
  url: '/users'
