UftpA.Views.Companies ||= {}

class UftpA.Views.Companies.IndexView extends Backbone.View
  template: JST["backbone/templates/companies/index"]

  initialize: () ->
    @options.companies.bind('reset', @addAll)

  addAll: () =>
    @options.companies.each(@addOne)

  addOne: (company) =>
    view = new UftpA.Views.Companies.CompanyView({model : company})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(companies: @options.companies.toJSON() ))
    @addAll()

    return this
