require_relative 'originator'
require_relative 'caretaker'

originator = Originator.new;
caretaker = CareTaker.new;

originator.set_state("State #1")
originator.set_state("State #2")
caretaker.add(originator.save_state_memento);

originator.set_state("State #3")
caretaker.add(originator.save_state_memento());

originator.set_state("State #4")
puts "Current State: #{originator.get_state}"

originator.get_state_from_memento(caretaker.get(0));
puts "First saved State: #{originator.get_state}"
originator.get_state_from_memento(caretaker.get(1));
puts "Second saved State: #{originator.get_state}"