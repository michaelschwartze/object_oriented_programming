class Cat
  def initialize(name, preferred_food, mealtime)
    @name = name
    @preferred_food = preferred_food
    @mealtime = mealtime
  end
end

meowsers = Cat.new('Meowsers', 'Fancy Feast', 19)
trousers = Cat.new('Trousers', 'Kibbles n Bits', 18)
