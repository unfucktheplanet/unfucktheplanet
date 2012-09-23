# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
locations = Location.create([{
  name: 'Kollwitz & Wörther', lat: '52.53661238755156', lon: ' 13.418254852294922'}])

users = User.create([{
  firstname: 'anne',
  lastname: 'kanne',
  gender: 'female',
  email: 'anne@kanne.de'
}])

fucks = Fuck.create([{
  title:'dirty playground', description: 'The Playground Cnr Kollwitz & Wörther Straße is dirty'},{
  description: 'The Playground Cnr Kollwitz & Wörther Straße is dirty'},{
  description: 'The Playground Cnr Kollwitz & Wörther Straße is dirty'}])

unfucks = Unfuck.create([{
  description: 'Lets go there at 09/20/2012 and clean it. I need 4 People for one hour.' 
  # fuck: fucks.first,
  # user: users.first,
  # location: locations.first
}])