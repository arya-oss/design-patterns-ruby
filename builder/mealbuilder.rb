require_relative 'meal'
require_relative 'coke'
require_relative 'pepsi'
require_relative 'vegburger'
require_relative 'chickenburger'

class MealBuilder
	def initialize
	end

	def prepare_veg_meal
		meal = Meal.new
		meal.addItem(VegBurger.new)
		meal.addItem(Coke.new)
		return meal
	end
	def prepare_nonveg_meal
		meal = Meal.new
		meal.addItem(ChickenBurger.new)
		meal.addItem(Pepsi.new)
		return meal
	end
end

meal_builder = MealBuilder.new
veg_meal = meal_builder.prepare_veg_meal
puts "Veg Meal"
veg_meal.showItems
puts "Totol cost: #{veg_meal.getCost}"

nonveg_meal = meal_builder.prepare_nonveg_meal
puts "NonVeg Meal"
nonveg_meal.showItems
puts "Totol cost: #{nonveg_meal.getCost}"
