# Get my number game
# From Head First Ruby
# Practice by Steve Bonds
# Jan 21 2019

# https://stackoverflow.com/questions/49074871/rubys-output-in-the-windows-console-vs-mingw64-vs-cygwin64
STDOUT.sync = true

puts "Welcome to 'Get My Number!'"
print "What is your name? "

input = gets

name = input.chomp

puts "Welcome, #{name}!"

# Store the number to be guessed
puts "I've picked a random number from 1 to 100 inclusive."
puts "Can you guess it?"
target = rand(100)+1

num_guesses = 0

puts "You have #{10 - num_guesses} guesses left."
print "What is your guess? "
guess = gets.to_i  # read from the keyboard, drop anything nonnumeric, and make it an integer

if guess < target
    puts "Not quite. Your guess was too LOW."
elsif guess > target
    puts "Whoa there! Your guess was too HIGH."
elsif guess == target
    puts "Nailed it!"
    puts "Nice job, #{name}! You guessed it in only #{num_guesses} tries!"
    guessed_it = true
else
    puts "This should have been impossible. What the heck???"
end

# If too many guesses are made without getting the answer, end the game
unless guessed_it
    puts "Wow, looked like I picked a tricky one! It was #{target}."
end
