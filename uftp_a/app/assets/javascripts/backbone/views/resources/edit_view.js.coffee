UftpA.Views.Resources ||= {}

class UftpA.Views.Resources.EditView extends Backbone.View
  template : JST["backbone/templates/resources/edit"]

  events :
    "submit #edit-resources" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (resources) =>
        @model = resources
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
