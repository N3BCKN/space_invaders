require 'ruby2d'

WIDTH = 800
HEIGHT = 600

class Ship 
  def initialize
    @x = WIDTH/2 - 40 
    @y = HEIGHT - 40
  end 

  def move_left
    @x -= 8 unless @x - 8 <= 0 
  end 

  def move_right
    @x += 8 unless @x + 8 >= WIDTH - 80
  end

  def draw
    Image.new('./assets/images/ship1.png', x: @x, y: @y, width: 80, height: 40)
  end
end


set width: WIDTH
set height: HEIGHT
set title: 'space invaders'


player = Ship.new 

update do 
  clear 
  player.draw
end  

on :key_held do |event|
  if event.key == 'left'
    player.move_left
  elsif event.key == 'right'
    player.move_right
  end 
end

show 
