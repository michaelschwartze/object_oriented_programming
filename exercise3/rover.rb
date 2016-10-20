class Rover

  def initialize
    puts "Enter a name for the new rover:"
    @name       = gets.chomp
    puts "Enter x coordinate for new rover:"
    @x_coord    = gets.chomp
    puts "Enter y coordinate for new rover:"
    @y_coord    = gets.chomp
    puts "Enter direction for new rover (N, E, S or W):"
    @direction  = gets.chomp
  end

  def read_instruction
    #5, 5
    #1, 1, N
    #LRLMLRRLLMMMMR
    puts "What do you want to do? (type move or turn):"
    instruction = gets.chomp
    if instruction == "move"
      return move
    elsif instruction == "turn"
      return turn
    else
      return "You entered #{instruction}, that's not valid!"
    end
  end

  def rover_position
    "#{ @name } is located at (x, y) coordinates #{ @x_coord }, #{ @y_coord } and is pointing #{ @direction }"
  end

  def move
    #x right left
    case @direction == "N"
      @
    #return "You want to move."
  end

  def turn
    return "You want to turn."
  end

end
