puts "What is your name?"

name = gets.chomp

puts "Hello #{name}, nice to meet you!"


puts "How old are you?"

age = gets.chomp.to_i

puts "In 10 years you will be:
#{age + 10}"

puts "In 20 years you will be:
#{age + 20}"

puts "In 30 years you will be:
#{age + 30}"

puts "In 40 years you will be:
#{age + 40}"


10.times do
	puts name
end

puts "What is your first name?"

first_name = gets.chomp

puts "What is your last name?"

last_name = gets.chomp

full_name = first_name + " " + last_name

puts full_name


y = 0
3.times do 
	y += 1
	x = y
end
puts x

There is a variable that is not available because it is defined within the wrong scope.