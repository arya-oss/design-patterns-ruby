require_relative 'mediaplayer'
require_relative 'vlcplayer'
require_relative 'mp4player'

class MediaAdapter < MediaPlayer
	def initialize(audioType)
		if audioType == "vlc"
			@adv_music_player = VlcPlayer.new
		elsif audioType == "mp4"
			@adv_music_player = Mp4Player.new
		end
	end

	def play(audioType, filename)
		if audioType == "vlc"
			@adv_music_player.playVlc(filename)
		elsif audioType == "mp4"
			@adv_music_player.playMp4(filename)
		end
			
	end
end