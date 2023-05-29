class Ship 
  attr_reader :x, :y

  def initialize
    @x = WIDTH/2 - 30 
    @y = HEIGHT - 30
  end 

  def move_left
    @x -= 8 unless @x - 8 <= 0 
  end 

  def move_right
    @x += 8 unless @x + 8 >= WIDTH - 60
  end

  def draw
    Image.new('./assets/images/ship.png', x: @x, y: @y, width: 60, height: 30)
  end
end
