require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Can make separate instances of the class store with the respective store names and fill it with details for that given store
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# log the count of the stores created so far (should say 3)
puts Store.count
