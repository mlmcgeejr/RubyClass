def convert_lbs_to_kg(pounds)
    kg = pounds * 0.453592
	return kg
end	

class Object
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end

acquaintances = ['friend', 'cousin', 'teacher', 'boss']

allisok = "Yes"
while allisok == "Yes"
	puts "Hello.  I am going to help you with an earth shattering program that will change your life!"
	puts 'We are going to convert pounds to kilograms - something that I know has always been one of life\'s challenges for you.'
	puts "Let's get started!!"

	err1=0
	valid_name = 'No'
	while valid_name == "No"
		puts "What is your name?"
		your_name = gets.chomp
		if your_name.length ==0
			err1 = err1 + 1
			if err1 ==3
				puts "Three strikes - your out!   Happy Trails To You, Until We Meet Again!"
				allisok = 'No'
				break
			else
				if err1 == 2
					puts "OK - your wasting my time and your time.  One more try, and then I'm outta here!"
				else	
					puts "OK - Help me out here, you gotta enter something for your name.  How else will I know what to call you?"
					puts "Try again."
				end	 
			end
	else
		your_name = your_name.capitalize
		puts "Hello #{your_name} - That's a nice name.  I had a #{acquaintances[rand(3)]} named #{your_name}."
		valid_name = "Yes"
		puts " "
		end
	end	  
	
	if valid_name == 'No'      #A valid name was never entered, so we are ending the routine
		break
	end
	
	
	err1=0
	
	while true
		puts "OK #{your_name}, enter a weight in pounds (a number, please) that you want to see converted to kilograms - OR type END to quit."
		answer = gets.chomp
		if answer.length == 0 
			err1 = err1 + 1
			if err1 == 1
				puts "#{your_name}, you gotta enter END or a number - try it again"
				puts " "
			else
				if err1 == 2
					puts "OK #{your_name},  let's talk.  REALLY!! You have to enter a number or your have to enter END. " + 
					"You got that #{your_name}!  How hard is this?   You get one more try, then I am gone to the bar!"
					puts " "
				else
					puts "See you for happy hour.  I am gone!"
					break
				end	
			end	
		end
		if answer.downcase =="end"
			puts "Nice talking to you #{your_name}.  See ya later alligator!"
			allisok = 'No'
		   break
		end   
		
		if answer.is_number?
			pounds = answer.to_f
			puts pounds.to_s + ' pounds is equal to ' + convert_lbs_to_kg(pounds).to_s + ' kilograms'
			puts " "
		else
			puts "Hellooooo!.    A number #{your_name} or END.   Not to hard.   Try it again."
		end	
	end
end