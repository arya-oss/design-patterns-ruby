class ChatRoom
	def self.show_message(user, message)
		puts "#{Time.now} [User: #{user.get_name}, message: #{message}]."
	end
end