class UftpA.Models.Company extends Backbone.Model
  paramRoot: 'company'

  defaults: 0

class UftpA.Collections.CompaniesCollection extends Backbone.Collection
  model: UftpA.Models.Company
  url: '/companies'
