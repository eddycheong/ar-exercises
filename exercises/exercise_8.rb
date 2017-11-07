require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

# Your code goes here ...
employee = @store1.employees.create(first_name: "Casper", last_name: "Ghost", hourly_rate: 60)

puts employee.inspect