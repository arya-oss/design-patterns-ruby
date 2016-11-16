require_relative 'terminalexpression'
require_relative 'orexpression'
require_relative 'andexpression'

def get_male_expression
	robert = TerminalExpression.new("Robert")
	john = TerminalExpression.new("John")
	OrExpression.new(robert, john)
end

def get_married_woman_expression
	julie = TerminalExpression.new("Julie")
	married = TerminalExpression.new("Married")
	AndExpression.new(julie, married)
end

is_male = get_male_expression
is_married_woman = get_married_woman_expression

puts "John is male? #{is_male.interpret('John')}"
puts "Julie is married woman? #{is_married_woman.interpret('Julie Married')}"