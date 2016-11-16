class MediaPlayer
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def play(audioType, filename)
		raise NotImplementedError.new("#{self.class.name}#play is an abstract method.")
	end
end