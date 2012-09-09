window.Unfucktheplanet.Router = Backbone.Router.extend({
  routes: ({
    "": "index",
    "fuck/:id": "fuck"
  }),
  index: function() {
    return console.log("index");
  },
  fuck: function(id) {
    return console.log("fuck with id");
  }
});