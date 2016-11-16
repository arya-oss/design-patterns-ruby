require_relative 'shapefactory'
require_relative 'colorfactory'

shape = ShapeFactory.getShape("Circle")
shape.draw()

color = ColorFactory.getColor("Blue")
color.fill()
