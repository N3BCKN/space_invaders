class Enemy
  attr_reader :x, :y

  def initialize(x, y, color)
    @color = color 
    @x = x
    @y = y 
  end
  
  def draw
    Image.new("./assets/images/enemy_#{@color}.png", x: @x, y: @y, width: 45, height: 25)
  end

  def move_right
    @x -= 30
  end

  def move_down
    @y += 30 
    @x += 180
  end
end 
