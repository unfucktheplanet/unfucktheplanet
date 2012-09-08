UftpA.Views.Resources ||= {}

class UftpA.Views.Resources.IndexView extends Backbone.View
  template: JST["backbone/templates/resources/index"]

  initialize: () ->
    @options.resources.bind('reset', @addAll)

  addAll: () =>
    @options.resources.each(@addOne)

  addOne: (resources) =>
    view = new UftpA.Views.Resources.ResourcesView({model : resources})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(resources: @options.resources.toJSON() ))
    @addAll()

    return this
