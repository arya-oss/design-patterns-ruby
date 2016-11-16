require_relative 'advancedmediaplayer'

class VlcPlayer < AdvancedMediaPlayer
	def initialize
	end
	def playVlc(filename)
		puts "Playing vlc file. Name: #{filename}"	
	end
	def playMp4(filename)

	end
end