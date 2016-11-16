require_relative 'image'

class RealImage < Image
	def initialize(filename)
		@filename = filename
		loadfromdisk(filename)
	end

	def display
		puts "displaying: #{@filename}"
	end

	def loadfromdisk(filename)
		puts "loading image: #{filename}"
	end

	private_methods :loadfromdisk
end