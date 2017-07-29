
# puts "Give me input"

# input = gets.chomp.to_s

# while input != "STOP" do 
# 	puts "Try again"
# 	input = gets.chomp
# end


["dogs", "cats", "birds"].each_with_index do |value, index|
	puts "#{index}: #{value}"
end

top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castlevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end

def countdown(start)
	puts start
	if start > 0
		countdown(start - 1)
	end
end

countdown(12)
countdown(-3)
countdown(0)