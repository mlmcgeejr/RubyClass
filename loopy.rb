def bob1
  x=99
  for n in 1..100 
    puts "#{x} bottles of beer on the wall!"
    x=x-1
  end
end

def bob2
   n=99
  while n>=0
       puts "#{n} bottles of beer on the wall!"
       n=n-1
  end  
end 

def bob3
  x=100
  until x==0
     puts "#{x-1} bottles of beer on the wall!"
     x=x-1
  end
end

def bob4
  100.times do |n|
    puts "#{99-n} bottles of beer on the wall!"
  end  
end  

def bob5
  arr=(0..99).to_a
  arr.each do |n|
     puts "#{99-n} bottles of beer on the wall!"
  end
end

def bob6
  99.downto(*0){|n| puts "#{n} bottles of beer on the wall!"}
end

def favcolor
 while true
    puts "Enter your favorite color"
    favcol = gets.chomp
    if favcol.downcase == "red"
      puts "Goodbye"
      break
    end
  end 
end  

bob6