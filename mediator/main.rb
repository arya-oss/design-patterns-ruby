require_relative 'user'

robert = User.new("Robert")
john = User.new("John")

robert.send_message("Hello John")
john.send_message("Hi, Robert")