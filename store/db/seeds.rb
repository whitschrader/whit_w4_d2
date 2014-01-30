# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


products = []
products << Product.create(name: 'glasses') # products[0]
products << Product.create(name: 'shoes') # products[1]
products << Product.create(name: 'shorts') # products[2]
products << Product.create(name: 'hammer') # products[3]
products << Product.create(name: 'nails') # products[4]
products << Product.create(name: 'screwdriver') # products[5]
products << Product.create(name: 'tv') # products[6]
products << Product.create(name: 'stapler') # products[7]

categories = []
categories << Category.create(name: 'clothes') 
categories << Category.create(name: 'home')
categories << Category.create(name: 'accessories')
categories << Category.create(name: 'repair')
categories << Category.create(name: 'office')

#for clothes category
categories[0].products << products[1] #shoes
categories[0].products << products[2] #shorts

#for home category
categories[1].products << products[3] #hammer
categories[1].products << products[4] #nails
categories[1].products << products[7] #stapler

#for accessories
categories[2].products << products[6] #tv
categories[2].products << products[0] #glasses
categories[2].products << products[7] #stapler

#for repair
categories[3].products << products[3] #hammer
categories[3].products << products[4] #nails
categories[3].products << products[5] #screwdriver

#for office
categories[3].products << products[0] #glasses
categories[3].products << products[6] #tv
categories[3].products << products[7] #stapler


