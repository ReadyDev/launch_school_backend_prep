#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each {|x| puts x}


#2 Same as above, but only print out values greater than 5.

arr.each do |x|
	if x > 5
		puts x
	end
end


#3 Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

new_arr = []

arr.select do |x|
	if x % 2 != 0
		new_arr.push x
	end
end

puts new_arr


#4 Append "11" to the end of the original array. Prepend "0" to the beginning.

puts arr << 11
puts arr.unshift 0


#5 Get rid of "11". And append a "3".

puts arr.delete 11
puts arr << 3

puts arr


#6 Get rid of duplicates without specifically removing any one value.

puts arr.uniq


#7 What's the major difference between an Array and a Hash?

"""An array is a set of integer indexed objects, while a hash is a set of keys matched with values
where the keys are the index, instead of integers."""


#8 Create a Hash using both Ruby syntax styles.

movies_dates = {"Gladiator"    => 2000,
								"Braveheart"   => 1995,
								"Finding Nemo" => 2003}

dog_names = {Mastiff:  "Lola",
						 Labrador: "Loki",
						 Collie:   "Pixie"}


#9 Suppose you have a hash h = {a:1, b:2, c:3, d:4}

#Get the value of key `:b`.
h = {a:1, b:2, c:3, d:4}
h[:b]

#Add to this hash the key:value pair `{e:5}`
h[:e] = 5

#Remove all key:value pairs whose value is less than 3.5

h.each do |k, v|
	if v < 3.5
		h.delete(k)
	end
end

puts h


#10 Can hash values be arrays? Can you have an array of hashes? (give examples)

"""Yes, hash values can be arrays, and you can have an array of hashes."""

favorites_hash = {cars: ["Porsche", "Ferrari", "Lamborghini"],
									bikes: ["Ducati", "Yamaha", "Honda"]}

favorites_array = [{cars: ["Porsche", "Ferrari", "Lamborghini"], bikes: ["Ducati", "Yamaha", "Honda"]}]


#11 Look at several Rails/Ruby online API sources and say which one you like best and why.

"""I like http://devdocs.io/rails~5.1/, the layout of the site seems very clear.  You have a search box
at the top left, and then the left panel has a wide range of items that are all drop down menus, and you
can then easily click into any of them to drill down into the description."


#12 Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]

contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]


#13 Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

contacts['Joe Smith'][:email]
contacts['Sally Johnson'][:phone]


#14 In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 

fields = [:email, :address, :phone]

contacts.each do |name, value|
	fields.each do |field|
		hash[field] = contact_data.shift
	end
end


#15 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|x| x.start_with?('s')}

#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr << ['snow', 'slippery', 'salted roads']

arr.delete_if {|y| (y.start_with?('s')) || (y.start_with?('w'))}


#16 Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map {|words| words.split}

c = b.flatten

p c


#17 What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#Output is "These hashes are the same".  They are just different methods of syntax for key value pairs
#in a hash, using symbol notation or hash rocket notation.