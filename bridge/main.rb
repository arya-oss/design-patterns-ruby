require_relative 'circle'
require_relative 'redcircle'
require_relative 'greencircle'

red_circle = Circle.new(100, 100, 10, RedCircle.new)
green_circle = Circle.new(100, 100, 10, GreenCircle.new)

red_circle.draw
green_circle.draw