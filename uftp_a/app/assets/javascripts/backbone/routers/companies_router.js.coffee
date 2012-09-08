class UftpA.Routers.CompaniesRouter extends Backbone.Router
  initialize: (options) ->
    @companies = new UftpA.Collections.CompaniesCollection()
    @companies.reset options.companies

  routes:
    "new"      : "newCompany"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCompany: ->
    @view = new UftpA.Views.Companies.NewView(collection: @companies)
    $("#companies").html(@view.render().el)

  index: ->
    @view = new UftpA.Views.Companies.IndexView(companies: @companies)
    $("#companies").html(@view.render().el)

  show: (id) ->
    company = @companies.get(id)

    @view = new UftpA.Views.Companies.ShowView(model: company)
    $("#companies").html(@view.render().el)

  edit: (id) ->
    company = @companies.get(id)

    @view = new UftpA.Views.Companies.EditView(model: company)
    $("#companies").html(@view.render().el)
