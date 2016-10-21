class Rover

  attr_accessor :x_coord, :y_coord, :direction

  COMPASS_HASH = { "N" => 0, "E" => 90, "S" => 180, "W" => 270 }

  def initialize(x_coord, y_coord, direction)
    @x_coord    = x_coord
    @y_coord    = y_coord
    @direction  = direction
  end

  def dir_to_deg
    COMPASS_HASH[@direction]
  end

  def position
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

  def turn(direction)
    if direction == "R"
      @direction = COMPASS_HASH.key(COMPASS_HASH[@direction] + 90)
    elsif direction == "L"
      @direction = COMPASS_HASH.key(COMPASS_HASH[@direction] - 90)
    end
  end

end


puts 'Enter grid size as "x y":'
grid_size = gets.chomp
grid_x_val = grid_size[0]
grid_y_val = grid_size[2]

puts 'Enter parameters for rover1 as "x_coordinate y_coordinate direction":'
rover_parameters = gets.chomp
x_coord     = rover_parameters[0].to_i
y_coord     = rover_parameters[2].to_i
direction   = rover_parameters[4].to_s
rover1 = Rover.new(x_coord, y_coord, direction)

puts 'Enter move and turn instructions for rover1 with no spaces:'
move_instructions = gets.chomp

move_instructions.chars.each do |x|
  if x == "R" || x == "L"
    rover1.turn(x)
  elsif x == "M"
    rover1.move
  end
end

puts 'Enter parameters for rover2 as "x_coordinate y_coordinate direction":'
rover_parameters = gets.chomp
x_coord     = rover_parameters[0].to_i
y_coord     = rover_parameters[2].to_i
direction   = rover_parameters[4].to_s
rover2 = Rover.new(x_coord, y_coord, direction)

puts 'Enter move and turn instructions for rover2 with no spaces:'
move_instructions = gets.chomp

move_instructions.chars.each do |x|
  if x == "R" || x == "L"
    rover2.turn(x)
  elsif x == "M"
    rover2.move
  end
end

puts rover1.position
puts rover2.position

#puts 'Enter parameters for rover2 as "x_coordinate y_coordinate direction":'
