class Cat

  attr_reader :mealtime, :preferred_food, :name

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
    return "#{mealtime} #{am_pm}"
  end

  def meow
    "My name is #{@name} and I hoover #{@preferred_food} at #{eats_at}"
  end

end

meowsers = Cat.new('Meowsers', 'Fancy Feast', 19)
trousers = Cat.new('Trousers', 'Kibbles n Bits', 18)

puts meowsers.meow
puts trousers.meow
