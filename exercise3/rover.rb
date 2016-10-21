class Rover

  attr_accessor :x_coord, :y_coord, :direction
  attr_reader :direction_to_degrees

  def initialize(x_coord, y_coord, direction)
    @x_coord    = x_coord
    @y_coord    = y_coord
    @direction  = direction
    @direction_to_degrees = direction_to_degrees
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

  def rover_position
    "Rover is located at (x, y) coordinates #{ @x_coord }, #{ @y_coord } and is pointing #{ @direction }"
  end

  def move
    if @direction == "N"
      @y_coord = @y_coord + 1
    elsif @direction == "E"
      @x_coord = @x_coord + 1
    elsif @direction == "S"
      @y_coord = @y_coord - 1
    elsif @direction == "W"
      @x_coord = @x_coord - 1
    end
  end

  def turn

  end

end

def read_instruction
  puts 'Enter grid size as "x y":'
  grid_size = gets.chomp
  puts grid_size.chars[0]
  puts grid_size.chars[2]
end

rover1 = Rover.new(1, 2, "N")
#rover2 = Rover.new()
