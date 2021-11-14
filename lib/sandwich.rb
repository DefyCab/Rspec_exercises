class Sandwich
  attr_accessor :meat, :cheese, :toppings

  def initialize(meat, cheese, toppings = [])
    self.meat = meat
    self.cheese = cheese
    self.toppings = toppings
  end
end
