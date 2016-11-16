require_relative 'mediaplayer'
require_relative 'mediaadapter'

class AudioPlayer < MediaPlayer
	def initialize
	end

	def play(audioType, filename)
		if audioType == 'mp3'
			puts "Playing mp3 file. filename: #{filename}"
		elsif audioType == 'vlc'
			mediaadapter = MediaAdapter.new(audioType)
			mediaadapter.play(audioType, filename)
		else
			puts "Invalid media. #{audioType} format is not supported."
		end

	end
end