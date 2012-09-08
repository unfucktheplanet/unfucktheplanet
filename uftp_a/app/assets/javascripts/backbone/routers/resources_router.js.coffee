class UftpA.Routers.ResourcesRouter extends Backbone.Router
  initialize: (options) ->
    @resources = new UftpA.Collections.ResourcesCollection()
    @resources.reset options.resources

  routes:
    "new"      : "newResources"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newResources: ->
    @view = new UftpA.Views.Resources.NewView(collection: @resources)
    $("#resources").html(@view.render().el)

  index: ->
    @view = new UftpA.Views.Resources.IndexView(resources: @resources)
    $("#resources").html(@view.render().el)

  show: (id) ->
    resources = @resources.get(id)

    @view = new UftpA.Views.Resources.ShowView(model: resources)
    $("#resources").html(@view.render().el)

  edit: (id) ->
    resources = @resources.get(id)

    @view = new UftpA.Views.Resources.EditView(model: resources)
    $("#resources").html(@view.render().el)
