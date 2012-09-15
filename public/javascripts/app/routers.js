window.Unfucktheplanet.Router = Backbone.Router.extend({
  routes: ({
    "": "index",
    "fuck/:id": "fuck"
  }),
  index: function() {
    window.App = new window.HomeView;
  },
  fuck: function(id) {
    
  }
});