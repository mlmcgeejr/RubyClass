while true
	puts "Enter anything - numbers, characters - whatever you like. - If you want to quit, type QUIT"
	answer = gets.chomp
	if answer.downcase == "quit"
		puts "See ya later!"
		break
	end	
	if answer.length == 0
		puts "OK - you have to enter something, otherwise I have nothing to do!   Try this again."
		puts " "
	  else
		puts "Here is it backwards #{answer.reverse}.  Pretty neat - huh?  Try it again.T"
		
		puts " "
	end	
end	
	
