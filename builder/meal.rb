require_relative 'item'

class Meal
	def initialize
		@items = []
	end
	
	def addItem(item)
		@items.push(item)
	end

	def getCost
		cost = 0.0
		@items.each do |item|
			cost += item.price
		end
		return cost
	end

	def showItems
		@items.each do |item|
			puts "Item: #{item.name}, Packing: #{item.packing().pack}, Price: #{item.price}"
		end
	end
end

