require_relative 'container'
require_relative 'iterator'

class NameRepository < Container
	@@names = ["Robert","John","Julie", "Linda"]
	def initialize
	end

	def self.names
		@@names
	end

	def get_iterator
		NameIterator.new
	end
	class NameIterator < Iterator
		def initialize
			@index = 0
		end
		def has_next
			@index < NameRepository.names.length
			
		end

		def next
			if has_next
				i = @index
				@index+=1
				return NameRepository.names[i]
			end
			return nil
		end
	end
end