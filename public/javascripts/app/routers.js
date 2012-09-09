window.Unfucktheplanet.Router = Backbone.Router.extend({
  routes: ({
    "": "index",
    "fuck/:id": "fuck"
  }),
  index: function() {
    window.App = new window.AppView;
  },
  fuck: function(id) {
    return console.log("fuck with id");
  }
});