class Unfucktheplanet.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    first_name: null
    last_name: null
    gender: null
    email: null
    location_id: null
    fb_id: null
    fb_token: null

class Unfucktheplanet.Collections.UsersCollection extends Backbone.Collection
  model: Unfucktheplanet.Models.User
  url: '/users'
