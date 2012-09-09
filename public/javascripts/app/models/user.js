window.Unfucktheplanet.Models.User = Backbone.Model.extend({
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

window.Unfucktheplanet.Collections.UsersCollection = Backbone.Collection.extend({
  model: Unfucktheplanet.Models.User,
  url: '/users'
});
  