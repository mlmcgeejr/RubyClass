def convert_inches_to_centimeters(inches)
    centimeters = inches * 2.54
	return centimeters 
end	
def convert_lbs_to_kg(pounds)
    kg = pounds * 0.453592
	return kg
end	

puts "Enter your name"
my_name = gets.chomp
puts "How tall are you in inches?"
height_inches = gets.chomp.to_i
puts "How much do you weigh in pounds?"
weight_pounds = gets.chomp.to_i
height_centimeters = convert_inches_to_centimeters(height_inches)
weight_kilograms = convert_lbs_to_kg(weight_pounds)
puts my_name + ' is ' + height_centimeters.to_s + ' cm and ' + 
weight_kilograms.to_s + ' kg'