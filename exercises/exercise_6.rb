require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Create instances of employee class with various names and assign to stores 1 or 2
@store1.employees.create(first_name: "Mohammad", last_name: "Tariq", hourly_rate: 100)
@store1.employees.create(first_name: "John", last_name: "Wick", hourly_rate: 60)
@store1.employees.create(first_name: "Yarn", last_name: "Wick", hourly_rate: 60)
@store1.employees.create(first_name: "Crystal", last_name: "Maiden", hourly_rate: 70)
@store2.employees.create(first_name: "Tom", last_name: "Cat", hourly_rate: 80)
@store2.employees.create(first_name: "Jerry", last_name: "Mouse", hourly_rate: 85)
@store2.employees.create(first_name: "James", last_name: "Bond", hourly_rate: 77)
@store2.employees.create(first_name: "Sella", last_name: "Maynay", hourly_rate: 90)

# Confirm the employees were successfully created by using count for each store
puts @store1.employees.count
puts @store2.employees.count