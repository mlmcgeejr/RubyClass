class Object
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end

valid_numbers = 0

puts "OK.  I am smarter than a 5th grader, and I am really a whiz at math."
puts "You can give me two numbers - I don't care how big they are, and I can INSTANTLY"
puts "divide the first number by the second number, and give you the quotient AND the remainder!"
puts " "
puts "Don't believe it - try me!"
puts " "

endit = false

while true
	
	while valid_numbers < 2
		puts "Enter the first number (the dividend or numerator) or enter END to quit."
		number1 = gets.chomp
		if number1.length == 0
			puts "Come on - you have to enter something!!!!"
			break
		end	
		
		if number1.downcase == "end"
			endit = true
			break
		end 	
	
		if number1.is_number?
			valid_numbers = 1
		else
			puts "OK - no tricks - you gotta enter a number.  Try it again."
		end

		if valid_numbers == 0
			break
		end
		
		puts "Enter the second number (he divisor or denominator), or enter END to quit."   
		number2 = gets.chomp
		if number2.length == 0
			puts "Same goes for the 2nd number, you have to give me some kind of number!!!"
			valid_numbers = 0
			break
		end	
		
		if number2.downcase == "end"
			endit = true
			break
		end 	
	
		if number2.is_number?
			valid_numbers = 2
		else
			puts "OK - no tricks - you gotta enter a number.  Try it again."
		end

		if valid_numbers == 1
			break
		end
		
	end
	
	if endit
		break
	end
	
	if valid_numbers == 2
		quotient = number1.to_f / number2.to_f
		remainder = number1.to_f % number2.to_f
		puts "Drum roll please .............."
		puts "The quotient is #{quotient.to_i}, and the remainder is #{remainder.to_i}  !!!"
		puts " "
		puts "I am smarter than a 5th grader!"
		puts " "
		puts "Try another one!"
		puts " "
		valid_numbers = 0
	end
end			
