class Cat
  
  attr_reader :mealtime

  def initialize(name, preferred_food, mealtime)
    @name = name
    @preferred_food = preferred_food
    @mealtime = mealtime
  end

  def eats_at
    if @mealtime > 12
      am_pm = "PM"
      mealtime = @mealtime - 12
    else
      am_pm = "AM"
      mealtime = @mealtime
    end
    "#{mealtime} #{am_pm}"
  end

end

meowsers = Cat.new('Meowsers', 'Fancy Feast', 19)
trousers = Cat.new('Trousers', 'Kibbles n Bits', 18)
