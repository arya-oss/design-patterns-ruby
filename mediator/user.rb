require_relative 'chatroom'

class User
	def initialize(name)
		@name = name
	end

	def get_name
		@name
	end

	def set_name(name)
		@name=name
	end

	def send_message(message)
		ChatRoom.show_message(self, message)
	end
end