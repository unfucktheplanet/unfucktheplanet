class unfucktheplanet.routers.App extends Backbone.Router
  routes:
    "":       "index"
    "index":  "index"
    "about":  "about"

  index: ->
    @home ||= new unfucktheplanet.views.HomeView(el: $("#wrapper"))
    @home.render()

  about: ->
    @aboutView ||= new unfucktheplanet.views.About(el: $("#wrapper"))
    @aboutView.render()
