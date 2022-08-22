require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total sum of annual revenues for each store
total_revenue = Store.sum(:annual_revenue)
puts total_revenue

# Output the average sum of annual revenues for each store
average_revenue = Store.average(:annual_revenue)
puts average_revenue

# Output the best stores that have annual revenue over $1M dollars
big_revenue_stores = Store.where('annual_revenue >= 1000000').count
puts big_revenue_stores
