class Paperboy

  attr_reader :name
  attr_accessor :experience, :quota

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    quota = 50 + (@experience/2)
  end

end

timmy = Paperboy.new('Timmy')
