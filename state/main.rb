require_relative 'context'
require_relative 'startstate'
require_relative 'stopstate'

context = Context.new

startstate = StartState.new
startstate.do_action(context)
#player state changed to start
puts context.get_state

stopstate = StopState.new
stopstate.do_action(context)
#player state changed to stop
puts context.get_state
