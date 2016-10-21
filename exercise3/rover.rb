class Rover

  attr_accessor :x_coord, :y_coord, :direction

  def initialize(x_coord, y_coord, direction)
    @x_coord    = x_coord
    @y_coord    = y_coord
    @direction  = direction
  end

  def direction_to_degrees
    if @direction == "N"
      @direction_to_degrees = 0
    elsif @direction == "E"
      @direction_to_degrees = 90
    elsif @direction == "S"
      @direction_to_degrees = 180
    else
      @direction_to_degrees = 270
    end
  end

  def read_instruction
    #5, 5 -> input 1, grid size
    #1, 1, N -> input 2,
    #LRLMLRRLLMMMMR -> input 3
  end

  def rover_position
    "Rover is located at (x, y) coordinates #{ @x_coord }, #{ @y_coord } and is pointing #{ @direction }"
  end

  def move
    #x right left
    #return "You want to move."
  end

  def turn
    return "You want to turn."
  end

end

rover1 = Rover.new(1, 2, "N")
