class Object
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end


def going_hiking(temp)

  if temp > 50
    puts "The temperature is #{temp}. I am going hiking!"
    elsif  temp == 23
      puts "The temperature is 23 degrees!"
  else
    puts "The temperature is #{temp}.  It is too cold.  I am staying home to study up on Rails!"
  end    
end


while  true
    puts "Enter a temperature or END to quit"
    temp = gets.chomp
 
  if temp.length == 0
     puts "You have to enter something - try it again!"
  elsif temp.downcase == "end"
    puts "Good bye"
    break
  elsif temp.is_number?
       puts going_hiking(temp.to_i)
  else  
    puts "You have to enter a valid number"
  end
end  