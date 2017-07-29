arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(3)



arr = [["test", "hello", "world"],["example", "mem"]]

puts arr.last.first

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

puts names

array = [3, 5, 7, 9]
array2 = []

array.each do |x|
	array2.push x + 2
end

p array
p array2