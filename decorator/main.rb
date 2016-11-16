require_relative 'redshapedecorator'
require_relative 'rectangle'
require_relative 'circle'

circle = Circle.new

# puts "Circle without border"
circle.draw()

redCircle = RedShapeDecorator.new(Circle.new)
# puts "Circle with red border"
redCircle.draw()

redRectangle = RedShapeDecorator.new(Rectangle.new)
# puts "rectangle with red border"
redRectangle.draw()