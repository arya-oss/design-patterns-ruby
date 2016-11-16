require_relative 'image'
require_relative 'realimage'

class ProxyImage < Image
	def initialize(filename)
		@filename = filename
	end

	def display
		if @realimage.nil?
			@realimage = RealImage.new(@filename)
		end
		@realimage.display()
	end
end