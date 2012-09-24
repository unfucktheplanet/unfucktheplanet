class unfucktheplanet.models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    first_name: null
    last_name: null
    gender: null
    email: null
    location_id: null
    fb_id: null
    fb_token: null

class unfucktheplanet.collections.UsersCollection extends Backbone.Collection
  model: unfucktheplanet.models.User
  url: '/users'