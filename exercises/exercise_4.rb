require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create three new stores with store information provided
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Check that stores were updated (should be 5 now)
# puts Store.count

# Find stores where mens apparel is set to true and assign to instance variable
@mens_stores = Store.where(mens_apparel: true)

# Output each store where mens apparel is true and log the store name and annual revenue next to each store name
@mens_stores.each do |store| puts "#{store.name}, #{store.annual_revenue}"
end

# Find stores where womens apparel is set to true and annual revenue less than $1M, assign to instance variable
@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

# Output each store where womens apparel is true/annual revenue is less than $1M and log the store name and annual revenue next to each store name
@womens_stores.each do |store| puts "#{store.name}, #{store.annual_revenue}"
end