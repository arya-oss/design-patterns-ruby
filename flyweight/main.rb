require_relative 'circle'
require_relative 'shapefactory'

$colors = ["Red", "Green", "Blue", "Yellow"]

def get_random_color
	
	r = Random.new
	$colors[r.rand(0...$colors.length)]
end

def get_random_x
	r = Random.new
	r.rand(100..200)
end

def get_random_y
	r = Random.new
	r.rand(100..200)
end

for i in 1..10
	circle = ShapeFactory.getCircle(get_random_color)
	circle.set_x(get_random_x)
	circle.set_y(get_random_y)
	circle.set_radius(100)
	circle.draw
end
