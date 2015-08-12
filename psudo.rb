#psuedo code

#hilo 
=begin
 set a number
 ask user for a the number
 store users number
 check to see if number matches
 check to see if the number is too high
 or too low
 
 let the user know if they've won

 bonus: tell the user to guess again
 bonus 2: make the number to guess a random number
=end

require "pry"

winning_number = rand(1..10)

binding.pry

user_wins = false

puts 'guess a number between 1 and 10'

while user_wins != true
	guess_number = gets.chomp.to_i

	if guess_number == winning_number
		user_wins = true
		puts "you're right, have a bite of a cookie"
	elsif guess_number > winning_number
		puts "you're too high, try again"
	elsif guess_number < winning_number
		puts "you're too low, guess again"
	end
end






















