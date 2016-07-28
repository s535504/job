# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Category.create([{ name: 'Accounting / Finance' }, { name: 'Sales' }, { name: 'Marketing' }])

Industry.create([{ name: 'Telecommunications Services' }, { name: 'Construction' }, { name: 'Distribution / Logistics' }])
