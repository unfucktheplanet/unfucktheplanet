class UFTP.Router extends Backbone.Router
  routes:
    "":       "index"
    "me":     "me"

  index: -> console.log("index") # TODO: init and render view

  me: -> console.log("me")
