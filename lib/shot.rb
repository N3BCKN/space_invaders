class Shot
  attr_reader :x, :y, :direction

  def initialize(x, y, direction)
    @x = x 
    @y = y 
    @direction = direction
  end

  def draw
    color = @direction == 'up' ? SHIP_COLOR : 'red'
    Line.new(x1: @x, y1: @y, x2: @x, y2: @y - 20, color: color)
  end

  def move
    incrementer = @direction == 'up' ? -7 : 7
    @y += incrementer
  end 
end
