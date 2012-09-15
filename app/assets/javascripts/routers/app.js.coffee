class unfucktheplanet.routers.App extends Backbone.Router
  routes:
    "":       "index"
    "index":  "index"
    "about":  "about"

  index: ->
    @indexView ||= new unfucktheplanet.views.Index(el: $("#wrapper"))
    @indexView.render()

  about: ->
    @aboutView ||= new unfucktheplanet.views.About(el: $("#wrapper"))
    @aboutView.render()
