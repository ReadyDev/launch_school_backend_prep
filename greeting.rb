# def greet(person)
# 	puts "Hello, " + person
# end

# greet("John")
# greet(1)

# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

def has_lab?(string)
	if string =~ /lab/
		puts string
	else
		puts "No match here."
	end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")