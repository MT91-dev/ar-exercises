require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Assign stores to 1 and 2 by the id's
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

# Update the name of store1 with "Greatest"
@store1.update(name: 'Greatest')

# Log the puts.inspect of store1 to confirm name change
p @store1
