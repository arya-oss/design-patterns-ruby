require_relative 'context'
require_relative 'addstrategy'
require_relative 'substrategy'
require_relative 'mulstrategy'

context = Context.new(AddStrategy.new)
puts "10 + 5 = #{context.execute_strategy(10, 5)}"

context = Context.new(SubStrategy.new)
puts "10 - 5 = #{context.execute_strategy(10, 5)}"

context = Context.new(MulStrategy.new)
puts "10 * 5 = #{context.execute_strategy(10, 5)}"