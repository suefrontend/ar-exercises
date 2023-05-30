require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter store name:"
store_name = gets.chomp

store = Store.new(name: store_name)
store.save

if store.errors.any?
  puts "Error creating the store:"
  store.errors.full_messages.each do |error|
    puts error
  end
else
  puts "Store successfully created!"
end
