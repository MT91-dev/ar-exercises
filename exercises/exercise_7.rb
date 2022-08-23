require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user to enter a store name and get input using chomp
print "Please enter a store name: "
store_name = gets.chomp

# Create new store with the name entered by the user
new_store = Store.create(name: store_name)

# Check if the store is valid and log whether it is valid or errors
puts new_store.valid?
puts new_store.errors.full_messages