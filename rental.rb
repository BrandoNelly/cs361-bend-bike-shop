require_relative 'luggage'
require_relative 'bike'

class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end


  def total_price
    bike.price
  end

  def total_weight
    bike.weight
  end
  
end