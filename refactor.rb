#Refactor code

numbers = []
sum = 0
num_times = rand(5..20)
puts num_times
num_times.times do     #  the times method takes the object and repeats the code loop that many times
	rand_num = rand(1..100)
	puts rand_num
end
	