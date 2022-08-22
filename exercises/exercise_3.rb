require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Find the store with with id 3 and store it into instance variable and destroy it
@store3 = Store.find_by(id: 3)
@store3.destroy

# Verify the store count is updated after destroying store3
puts Store.count

