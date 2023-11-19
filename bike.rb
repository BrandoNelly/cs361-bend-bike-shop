# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, 

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
  end

  def rent!
    self.rented = true
  end

end


class Pannier

  MAX_CARGO_ITEMS = 10

  attr_accessor :bike_id, :cargo_contents, :item, :max

  def initialize(cargo_contents, item = Null, max = MAX_CARGO_ITEMS)
    @cargo_contents = []
    @item = item
    @max = max
  end

  def pannier_capacity
    max
  end

  def pannier_remaining_capacity
    max - self.cargo_contents.size
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end