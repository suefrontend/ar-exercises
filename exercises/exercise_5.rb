require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
total_revenue  = Store.sum(:annual_revenue)
puts "Total avenue: #{total_revenue}"

# On the next line, also output the average annual revenue for all stores.
average_revenue = Store.average(:annual_revenue)
puts "Average avenue: #{average_revenue}"

# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
high_revenue_stores = Store.where("annual_revenue >= ? ", 1000000)
puts high_revenue_stores.size
