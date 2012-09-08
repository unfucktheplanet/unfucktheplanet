UftpA.Views.Resources ||= {}

class UftpA.Views.Resources.ResourcesView extends Backbone.View
  template: JST["backbone/templates/resources/resources"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
