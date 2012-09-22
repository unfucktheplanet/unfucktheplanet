window.unfucktheplanet.models.User = Backbone.Model.extend({
  paramRoot: 'user',

  defaults:({
    first_name: null,
    last_name: null,
    gender: null,
    email: null,
    location_id: null,
    fb_id: null,
    fb_token: null
  })
});

window.unfucktheplanet.collections.UsersCollection = Backbone.Collection.extend({
  model: unfucktheplanet.models.User,
  url: '/users'
});
  