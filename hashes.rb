# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

# immediate_family = family.select do |k, v|
# 	k == :sisters || k == :brothers
# end

# array = immediate_family.values.flatten

# p array


# h1 = {Yamaha: "R-wheezy"}
# h2 = {Honda: "Fireblade"}

# puts h1.merge(h2)
# puts h1
# puts h2


# h1 = {Yamaha: "R-wheezy"}
# h2 = {Honda: "Fireblade"}

# puts h1.merge!(h2)
# puts h1
# puts 

# pets = {mastiff: "Lola",
# 				labrador: "Loki",
# 				border_collie: "Pixie",
# 				mutt: "Clara"}

# pets.each do |k, v|
# 	puts k
# end

# pets.each do |k, v|
# 	puts v
# end

# pets.each do |k, v|
# 	puts ["#{k}: #{v}"]
# end


# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# # puts person[:name]


# if person.has_value?('name')
# 	puts "Yes"
# else
# 	puts "No"
# end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

#12 Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
            

# contacts = {"Joe Smith" => {}}

# # contacts['Joe Smith'][:email] = contact_data[0][0]
# # contacts['Joe Smith'][:address] = contact_data[0][1]
# # contacts['Joe Smith'][:phone] = contact_data[0][2]

# # contacts['Sally Johnson'][:email] = contact_data[1][0]
# # contacts['Sally Johnson'][:address] = contact_data[1][1]
# # contacts['Sally Johnson'][:phone] = contact_data[1][2]

# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
# 	fields.each do |field|
# 		hash[field] = contact_data.shift
# 	end
# end

# puts contacts

#15 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# #checks to see if elmement starts with 's'
# #deletes element if true

# arr.delete_if {|x| x.start_with?('s')}

# puts arr
# arr << ['snow', 'slippery', 'salted roads']

# puts arr

# arr.delete_if {|y| (y.start_with?('s')) || (y.start_with?('w'))}

# puts arr

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if {|x| x.start_with?('s')}

# #Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

# # arr << ['snow', 'slippery', 'salted roads']

# # puts arr

# arr.delete_if {|y| y.start_with?('s', 'w')}

# puts arr

#16 Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map {|words| words.split}

c = b.flatten

p c