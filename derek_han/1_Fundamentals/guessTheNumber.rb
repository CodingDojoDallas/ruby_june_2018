# Let's put our understanding of conditionals to the test. We're going to create a simple method with one input. Our method will be called guess_number and the input will be our guess. There will be three possible outcomes to this method. 

# The user guessed correctly, return "You got it!"
# The guess was too high, return "Guess was too high!"
# The guess was too low, return "Guess was too low!"
# If you want to challenge yourself, try using unless instead of if as much as you can.



def guessNumber guess
	num = 25
	if num == guess
		puts "You got it!"
	elsif num > guess
		puts "Guess was too high!"
	else
		puts "Guess was too low!"
	end
end
guessNumber 25
guessNumber 30
guessNumber 10

