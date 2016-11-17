require_relative 'binaryobserver'
require_relative 'octalobserver'
require_relative 'hexaobserver'
require_relative 'subject'

subject = Subject.new

OctalObserver.new(subject)
HexaObserver.new(subject)
BinaryObserver.new(subject)

puts "First State change: 15"
subject.set_state(15)

puts "Second State change: 10"
subject.set_state(10)