# Create a class to model a physical calculator
# Class Methods: Each of these methods accept two arguments value1 and value2 and output the result as a return value

# add
# subtract
# multiply
# divide

class Calculator
	attr_accessor :num1, :num2
	def initialize(num1, num2)
		@num1 = num1.to_f
		@num2 = num2.to_f
	end

	def add
		puts num1+num2
	end
	
	def subtract
		puts num1-num2
	end	

	def multiply
		puts num1*num2
	end

	def divide
		puts (num1/num2)
	end
end		

calulator = Calculator.new(3,5)

calulator.add
calulator.subtract
calulator.multiply
calulator.divide


# Create a class to model an elevator

# Instance Variables:
# floor - the floor you are currently on

# Instance Methods:
# The following methods will change the floor instance variable:
# go_up - tell the elevator to go up a floor
# go_down - tell the elevator to go down a floor
# floor - set this as a readable attribute to be accessed outside of the class definition
# cheery_greeting - display to the terminal the current floor with a interesting greeting
# Use the cheery_greeting method to display your greeting every time you change floors

# Challenge: If you are looking for a challenge then try these.

# Prevent the go_up method from going past the 12th floor
# Prevent the go_down method from going below the 1st floor


class Elevator
	attr_accessor :floor
	def initialize(floor)
		@floor = floor
	end

	def go_up
		@floor = @floor + 1
		if @floor >= 12
			puts "You are at top floor"
		elsif @floor <= 1
			puts "You are at the lobby"
		else	
			puts "You are at #{@floor} floor"
		end	
	end	

	def go_down
		@floor = @floor -1
		if @floor <= 1
			puts "You are at the lobby"
		elsif @floor >= 12	
			puts "You are at top floor"
		else	
			puts "You are at #{@floor} floor"
		end	
	end	

	def cheery_greetings
		puts "Welcome! You are at #{@floor} floor"
	end	

end

elevator = Elevator.new(-1)

elevator.go_up
elevator.go_up
elevator.go_up
elevator.go_down
puts elevator.floor
elevator.cheery_greetings
elevator.floor = 9
elevator.cheery_greetings

































