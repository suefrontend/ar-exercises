require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Use Active Record's create class method multiple times to create 3 stores in the database:
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

Store.create(
  name: 'Burnaby',
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

# Create the second store
Store.create(
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

# Create the third store
Store.create(
  name: 'Gastown',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

# store_count = Store.count
# puts "Number of stores: #{store_count}"
