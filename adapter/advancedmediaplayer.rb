class AdvancedMediaPlayer
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def playVlc(filename)
		raise NotImplementedError.new("#{self.class.name}#playVlc is an abstract method.")
	end
	def playMp4(filename)
		raise NotImplementedError.new("#{self.class.name}#playMp4 is an abstract method.")
	end
end