def caps(string)
	if string.length > 10
		puts string.upcase
	else
		puts string
	end
end

caps("Hello World!")
caps("Get rekt!")

puts "Give me a number."
number = gets.chomp.to_i

def hundred(number)
	if number >= 0 && number <= 50
		puts "#{number} is between zero and fifty"
	elsif number >= 51 && number <= 100
		puts "#{number} is between 51 and 100"
	else
		puts "#{number} is over 100"
	end
end

hundred(number)


def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)