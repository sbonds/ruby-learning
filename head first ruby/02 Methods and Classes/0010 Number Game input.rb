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
