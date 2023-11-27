!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

bike = Bike.new(1, :pink, 99.99, items)

items = bike.add_luggage[:apple, :water, :protein_bar]

rental = Rental.new(bike)

puts "Total Price: #{rental.total_price}, Total Weight: #{rental.total_weight}"

