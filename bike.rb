# Bike
require_relative 'luggage'
require_relative 'rental'

class Bike

  STANDARD_WEIGHT = 200 # lbs
  EXTRA_WEIGHT_COST = 2 # $ per lb

  attr_reader :id, :color, :base_price, :weight, :luggage


  def initialize(id, color, base_price, weight, luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY))
    @id = id
    @color = color
    @base_price = base_price
    @weight = STANDARD_WEIGHT
    @extra_items = []
  end


  def add_luggage(extra_items)
    @luggage.add(extra_items)
  end


  def price
    total_weight = @weight + @luggage
    @base_price + (EXTRA_WEIGHT_COST * total_weight)
  end

  def weight
    @weight + @luggage.total_weight
  end

end
