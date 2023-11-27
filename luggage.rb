class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(initial_capacity, items)
    @capacity = initial_capacity
    @items = []
  end

  def add(item)
    self.items << item if @items.size < @capacity
  end

  def total_weight
    calculator = LuggageWeightCalculator.new(@items)
    caclulator.calculate_total_weight
  end
end


class LuggageWeightCalculator
  WEIGHT_PER_ITEM = 10

  def initialize(items)
    @items = items
  end

  def weight
    self.items.size * 10
  end

  def calculate_total_weight
    @items.sum{ |item| item.weight * WEIGHT_PER_ITEM}
  end
end


