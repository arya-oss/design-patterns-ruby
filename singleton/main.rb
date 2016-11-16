require_relative 'singleobj'

s_obj = SingleObj.getInstance()
s_obj.showMessage()

s_obj_1 = SingleObj.getInstance()
s_obj_1.showMessage()

puts "compare s_obj == s_obj_1 : #{ s_obj == s_obj_1}"
